using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using CSharpLua.LuaAst;
using Microsoft.CodeAnalysis;
using Microsoft.CodeAnalysis.CSharp;
using Microsoft.CodeAnalysis.CSharp.Syntax;
using Microsoft.CodeAnalysis.Emit;

namespace CSharpLua {
    public sealed class Worker {
        private static Encoding Encoding => Encoding.UTF8;
        private static readonly string[] SystemDlls = new string[] {
            "mscorlib.dll",
            "System.dll",
            "System.Core.dll",
        };
        private const string kSystemMeta = "~/System.xml";

        private string folder_;
        private string output_;
        private string[] libs_;
        private string[] metas_;
        private string[] defines_;

        public Worker(string folder, string output, string lib, string meta, string defines) {
            folder_ = folder;
            output_ = output;
            libs_ = Utility.SplitPaths(lib);
            metas_ = Utility.SplitPaths(meta);
            defines_ = Utility.SplitPaths(defines);
        }

        private IEnumerable<string> Metas {
            get {
                List<string> metas = new List<string>();
                metas.Add(Utility.GetCurrentDirectory(kSystemMeta));
                metas.AddRange(metas_);
                return metas;
            }
        }

        public void Do() {
            Compiler();
        }

        private void Compiler() {
            CSharpParseOptions parseOptions = new CSharpParseOptions(preprocessorSymbols: defines_);
            var files = Directory.EnumerateFiles(folder_, "*.cs", SearchOption.AllDirectories);
            var syntaxTrees = files.Select(file => CSharpSyntaxTree.ParseText(File.ReadAllText(file), parseOptions, file));

            string runtimeDir = RuntimeEnvironment.GetRuntimeDirectory();
            var references = SystemDlls.Select(i => MetadataReference.CreateFromFile(Path.Combine(runtimeDir, i)))
                .Concat(libs_.Select(i => MetadataReference.CreateFromFile(i)));

            CSharpCompilation compilation = CSharpCompilation.Create("out.dll", syntaxTrees, references, new CSharpCompilationOptions(OutputKind.DynamicallyLinkedLibrary));
            using(MemoryStream ms = new MemoryStream()) {
                EmitResult result = compilation.Emit(ms);
                if(!result.Success) {
                    var errors = result.Diagnostics.Where(i => i.Severity == DiagnosticSeverity.Error);
                    string message = string.Join("\n", errors);
                    throw new CompilationErrorException(message);
                }
            }

            XmlMetaProvider xmlMetaProvider = new XmlMetaProvider(Metas);

            List<LuaCompilationUnitSyntax> luaCompilationUnits = new List<LuaCompilationUnitSyntax>();
            foreach(SyntaxTree syntaxTree in compilation.SyntaxTrees) {
                SemanticModel semanticModel = compilation.GetSemanticModel(syntaxTree);
                CompilationUnitSyntax compilationUnitSyntax = (CompilationUnitSyntax)syntaxTree.GetRoot();
                LuaSyntaxNodeTransfor transfor = new LuaSyntaxNodeTransfor(semanticModel, xmlMetaProvider);
                var luaCompilationUnit = (LuaCompilationUnitSyntax)compilationUnitSyntax.Accept(transfor);
                luaCompilationUnits.Add(luaCompilationUnit);
            }

            foreach(var luaCompilationUnit in luaCompilationUnits) {
                string outFile = Path.Combine(output_, Path.GetFileNameWithoutExtension(luaCompilationUnit.FilePath));
                using(var writer = new StreamWriter(outFile + "2.lua", false, Encoding)) {
                    LuaRenderer renderer = new LuaRenderer(writer);
                    luaCompilationUnit.Render(renderer);
                }
            }
        }
    }
}
