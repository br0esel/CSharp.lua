﻿-- Generated by CSharp.lua Compiler 1.0.0.0
local System = System;
System.namespace("CSharpLua.LuaAst", function (namespace) 
    namespace.class("LuaForInStatementSyntax", function (namespace) 
        local getForKeyword, getInKeyword, getPlaceholder, Render, __init__, __ctor__;
        getForKeyword = function (this) 
            return "for" --[[Keyword.For]];
        end;
        getInKeyword = function (this) 
            return "in" --[[Keyword.In]];
        end;
        getPlaceholder = function (this) 
            return CSharpLua.LuaAst.LuaIdentifierNameSyntax.Placeholder;
        end;
        Render = function (this, renderer) 
            renderer:Render44(this);
        end;
        __init__ = function (this) 
            this.Body = System.create(CSharpLua.LuaAst.LuaBlockSyntax(), function (default) 
                default.OpenBraceToken = "do" --[[Keyword.Do]];
                default.CloseBraceToken = "end" --[[Keyword.End]];
            end);
        end;
        __ctor__ = function (this, identifier, expression) 
            __init__(this);
            if identifier == nil then
                System.throw(System.ArgumentNullException("identifier"));
            end
            if expression == nil then
                System.throw(System.ArgumentNullException("expression"));
            end
            this.Identifier = identifier;
            this.Expression = CSharpLua.LuaAst.LuaInvocationExpressionSyntax:new(2, CSharpLua.LuaAst.LuaIdentifierNameSyntax.Each, expression);
        end;
        return {
            __inherits__ = {
                CSharpLua.LuaAst.LuaStatementSyntax
            }, 
            getForKeyword = getForKeyword, 
            getInKeyword = getInKeyword, 
            getPlaceholder = getPlaceholder, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
    namespace.class("LuaWhileStatementSyntax", function (namespace) 
        local getWhileKeyword, Render, __init__, __ctor__;
        getWhileKeyword = function (this) 
            return "while" --[[Keyword.While]];
        end;
        Render = function (this, renderer) 
            renderer:Render45(this);
        end;
        __init__ = function (this) 
            this.Body = System.create(CSharpLua.LuaAst.LuaBlockSyntax(), function (default) 
                default.OpenBraceToken = "do" --[[Keyword.Do]];
                default.CloseBraceToken = "end" --[[Keyword.End]];
            end);
        end;
        __ctor__ = function (this, condition) 
            __init__(this);
            if condition == nil then
                System.throw(System.ArgumentNullException("condition"));
            end
            this.Condition = condition;
        end;
        return {
            __inherits__ = {
                CSharpLua.LuaAst.LuaStatementSyntax
            }, 
            getWhileKeyword = getWhileKeyword, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
    namespace.class("LuaRepeatStatementSyntax", function (namespace) 
        local getRepeatKeyword, getUntilKeyword, Render, __init__, __ctor__;
        getRepeatKeyword = function (this) 
            return "repeat" --[[Keyword.Repeat]];
        end;
        getUntilKeyword = function (this) 
            return "until" --[[Keyword.Until]];
        end;
        Render = function (this, renderer) 
            renderer:Render46(this);
        end;
        __init__ = function (this) 
            this.Body = CSharpLua.LuaAst.LuaBlockSyntax();
        end;
        __ctor__ = function (this, condition) 
            __init__(this);
            if condition == nil then
                System.throw(System.ArgumentNullException("condition"));
            end
            this.Condition = condition;
        end;
        return {
            __inherits__ = {
                CSharpLua.LuaAst.LuaStatementSyntax
            }, 
            getRepeatKeyword = getRepeatKeyword, 
            getUntilKeyword = getUntilKeyword, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
end);
