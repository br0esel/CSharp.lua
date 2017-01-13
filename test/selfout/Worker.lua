﻿-- Generated by CSharp.lua Compiler 1.0.0.0
local System = System;
local Linq = System.Linq.Enumerable;
System.namespace("CSharpLua", function (namespace) 
    namespace.class("Worker", function (namespace) 
        local getEncoding, SystemDlls, getMetas, getLibs, Do, Compiler, GetOutFilePath, __staticCtor__, 
        __ctor__;
        getEncoding = function () 
            return System.Text.Encoding.getUTF8();
        end;
        getMetas = function (this) 
            local metas = System.List(System.String)();
            metas:Add(CSharpLua.Utility.GetCurrentDirectory("~/System.xml" --[[Worker.kSystemMeta]]));
            metas:AddRange(this.metas_);
            return metas;
        end;
        getLibs = function (this) 
            local runtimeDir = System.Runtime.InteropServices.RuntimeEnvironment.GetRuntimeDirectory();
            local libs = System.List(System.String)();
            libs:AddRange(Linq.Select(SystemDlls, function (i) return System.IO.Path.Combine(runtimeDir, i); end, System.String));
            for _, lib in System.each(this.libs_) do
                local default;
                if lib:EndsWith(".dll" --[[Worker.kDllSuffix]]) then
                    default = lib;
                else
                    default = (lib or "") .. ".dll" --[[Worker.kDllSuffix]];
                end
                local path = default;
                if not System.File.Exists(path) then
                    local file = System.IO.Path.Combine(runtimeDir, System.IO.Path.GetFileName(path));
                    if not System.File.Exists(file) then
                        System.throw(CSharpLua.CmdArgumentException(("lib '{0}' is not found"):Format(path)));
                    end
                    path = file;
                end
                libs:Add(path);
            end
            return libs;
        end;
        Do = function (this) 
            Compiler(this);
        end;
        Compiler = function (this) 
            local parseOptions = Microsoft.CodeAnalysis.CSharp.CSharpParseOptions(this.defines_);
            local files = System.IO.Directory.EnumerateFiles(this.folder_, "*.cs", 1 --[[SearchOption.AllDirectories]]);
            local syntaxTrees = Linq.Select(files, function (file) return Microsoft.CodeAnalysis.CSharp.CSharpSyntaxTree.ParseText(System.File.ReadAllText(file), parseOptions, file); end, Microsoft.CodeAnalysis.SyntaxTree);
            local references = Linq.Select(getLibs(this), function (i) return Microsoft.CodeAnalysis.MetadataReference.CreateFromFile(i); end, Microsoft.CodeAnalysis.PortableExecutableReference);
            local compilation = Microsoft.CodeAnalysis.CSharp.CSharpCompilation.Create("_", syntaxTrees, references, Microsoft.CodeAnalysis.CSharp.CSharpCompilationOptions(2 --[[OutputKind.DynamicallyLinkedLibrary]]));
            System.using(function (ms) 
                local result = compilation:Emit(ms);
                if not result:getSuccess() then
                    local errors = System.Linq.ImmutableArrayExtensions.Where(result:getDiagnostics(), function (i) return i:getSeverity() == 3 --[[DiagnosticSeverity.Error]]; end, Microsoft.CodeAnalysis.Diagnostic);
                    local message = System.String.Join("\n", errors, Microsoft.CodeAnalysis.Diagnostic);
                    System.throw(CSharpLua.CompilationErrorException(message));
                end
            end, System.IO.MemoryStream());

            local generator = CSharpLua.LuaSyntaxGenerator(getMetas(this), compilation);
            generator:Generate(function (luaCompilationUnit) 
                local outFile = GetOutFilePath(this, luaCompilationUnit.FilePath);
                return System.IO.StreamWriter(outFile, false, getEncoding());
            end);
        end;
        GetOutFilePath = function (this, inFilePath) 
            local path = inFilePath:Remove(0, #this.folder_):TrimStart(System.IO.Path.DirectorySeparatorChar, 47 --[['/']]);
            local extend = System.IO.Path.GetExtension(path);
            path = path:Remove(#path - #extend, #extend);
            path = System.IO.Path.Combine(this.output_, (path or "") .. ".lua" --[[Worker.kLuaSuffix]]);
            local dir = System.IO.Path.GetDirectoryName(path);
            if not System.IO.Directory.Exists(dir) then
                System.IO.Directory.CreateDirectory(dir);
            end
            return path;
        end;
        __staticCtor__ = function (this) 
            SystemDlls = System.Array(System.String)("mscorlib.dll", "System.dll", "System.Core.dll");
        end;
        __ctor__ = function (this, folder, output, lib, meta, defines) 
            this.folder_ = folder;
            this.output_ = output;
            this.libs_ = CSharpLua.Utility.Split(lib);
            this.metas_ = CSharpLua.Utility.Split(meta);
            this.defines_ = CSharpLua.Utility.Split(defines, false);
        end;
        return {
            Do = Do, 
            __staticCtor__ = __staticCtor__, 
            __ctor__ = __ctor__
        };
    end);
end);
