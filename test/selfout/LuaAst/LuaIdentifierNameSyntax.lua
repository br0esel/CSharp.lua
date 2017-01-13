﻿-- Generated by CSharp.lua Compiler 1.0.0.0
local System = System;
System.namespace("CSharpLua.LuaAst", function (namespace) 
    namespace.class("LuaIdentifierNameSyntax", function (namespace) 
        local Empty, Placeholder, One, System, Namespace, Class, Struct, Interface, 
        Enum, Value, This, True, Throw, Each, YieldReturn, Object, 
        Array, ArrayEmpty, MultiArray, Create, Add, StaticCtor, Init, Ctor, 
        Inherits, Default, SystemDefault, Property, Event, Nil, TypeOf, Continue, 
        StringChar, ToStr, ToEnumString, DelegateCombine, DelegateRemove, DelegateBind, IntegerDiv, IntegerMod, 
        BitAnd, BitOr, BitXor, ShiftRight, ShiftLeft, Try, Is, As, 
        Cast, Using, Linq, SystemLinqEnumerable, New, Access, Format, Delegate, 
        Int, Render, __staticCtor__, __ctor1__, __ctor2__;
        Render = function (this, renderer) 
            renderer:Render5(this);
        end;
        __staticCtor__ = function (this) 
            Empty = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "");
            Placeholder = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "_");
            One = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(2, 1);
            System = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System");
            Namespace = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "namespace");
            Class = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "class");
            Struct = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "struct");
            Interface = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "interface");
            Enum = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "enum");
            Value = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "value");
            This = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "this");
            True = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "true");
            Throw = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.throw");
            Each = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.each");
            YieldReturn = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.yieldReturn");
            Object = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.Object");
            Array = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.Array");
            ArrayEmpty = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.Array.Empty");
            MultiArray = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.MultiArray");
            Create = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.create");
            Add = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "Add");
            StaticCtor = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "__staticCtor__");
            Init = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "__init__");
            Ctor = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "__ctor__");
            Inherits = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "__inherits__");
            Default = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "__default__");
            SystemDefault = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.default");
            Property = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.property");
            Event = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.event");
            Nil = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "nil");
            TypeOf = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.typeof");
            Continue = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "continue");
            StringChar = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "string.char");
            ToStr = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "ToString");
            ToEnumString = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "ToEnumString");
            DelegateCombine = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.combine");
            DelegateRemove = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.remove");
            DelegateBind = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.bind");
            IntegerDiv = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.div");
            IntegerMod = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.mod");
            BitAnd = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.band");
            BitOr = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.bor");
            BitXor = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.xor");
            ShiftRight = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.sr");
            ShiftLeft = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.sl");
            Try = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.try");
            Is = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.is");
            As = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.as");
            Cast = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.cast");
            Using = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.using");
            Linq = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "Linq");
            SystemLinqEnumerable = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.Linq.Enumerable");
            New = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "new");
            Access = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.access");
            Format = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "Format");
            Delegate = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.Delegate");
            Int = CSharpLua.LuaAst.LuaIdentifierNameSyntax:new(1, "System.Int");
            this.Empty, this.Placeholder, this.One, this.System, this.Namespace, this.Class, this.Struct, this.Interface, this.Enum, this.Value, this.This, this.True, this.Throw, this.Each, this.YieldReturn, this.Object, this.Array, this.ArrayEmpty, this.MultiArray, this.Create, this.Add, this.StaticCtor, this.Init, this.Ctor, this.Inherits, this.Default, this.SystemDefault, this.Property, this.Event, this.Nil, this.TypeOf, this.Continue, this.StringChar, this.ToStr, this.ToEnumString, this.DelegateCombine, this.DelegateRemove, this.DelegateBind, this.IntegerDiv, this.IntegerMod, this.BitAnd, this.BitOr, this.BitXor, this.ShiftRight, this.ShiftLeft, this.Try, this.Is, this.As, this.Cast, this.Using, this.Linq, this.SystemLinqEnumerable, this.New, this.Access, this.Format, this.Delegate, this.Int = Empty, Placeholder, One, System, Namespace, Class, Struct, Interface, Enum, Value, This, True, Throw, Each, YieldReturn, Object, Array, ArrayEmpty, MultiArray, Create, Add, StaticCtor, Init, Ctor, Inherits, Default, SystemDefault, Property, Event, Nil, TypeOf, Continue, StringChar, ToStr, ToEnumString, DelegateCombine, DelegateRemove, DelegateBind, IntegerDiv, IntegerMod, BitAnd, BitOr, BitXor, ShiftRight, ShiftLeft, Try, Is, As, Cast, Using, Linq, SystemLinqEnumerable, New, Access, Format, Delegate, Int;
        end;
        __ctor1__ = function (this, valueText) 
            this.ValueText = valueText;
        end;
        __ctor2__ = function (this, v) 
            __ctor1__(this, v:ToString());
        end;
        return {
            __inherits__ = {
                CSharpLua.LuaAst.LuaExpressionSyntax
            }, 
            Render = Render, 
            __staticCtor__ = __staticCtor__, 
            __ctor__ = {
                __ctor1__, 
                __ctor2__
            }
        };
    end);
    namespace.class("LuaPropertyOrEventIdentifierNameSyntax", function (namespace) 
        local getPrefixToken, Render, __ctor__;
        getPrefixToken = function (this) 
            if this.IsProperty then
                return this.IsGetOrAdd and "get" --[[Tokens.Get]] or "set" --[[Tokens.Set]];
            else
                return this.IsGetOrAdd and "add" --[[Tokens.Add]] or "remove" --[[Tokens.Remove]];
            end
        end;
        Render = function (this, renderer) 
            renderer:Render6(this);
        end;
        __ctor__ = function (this, isProperty, valueText) 
            CSharpLua.LuaAst.LuaIdentifierNameSyntax.__ctor__[1](this, valueText);
            this.IsProperty = isProperty;
        end;
        return {
            __inherits__ = {
                CSharpLua.LuaAst.LuaIdentifierNameSyntax
            }, 
            IsGetOrAdd = true, 
            IsProperty = False, 
            getPrefixToken = getPrefixToken, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
end);
