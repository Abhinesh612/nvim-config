local ls = require("luasnip")

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

local sn = ls.snippet_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

ls.add_snippets("javascript", {
	-- Funciton 
	s("fn", fmt([[
	function {}({}){{
		{}
	}}
	]], {
		i(1, "function"),
		i(2),
		i(3, "//content"),
	})),

	-- Arrow Funciton 
	s("arrow", fmt([[
	const {} = ({}) => {{
		{}
	}}
	]], {
		i(1, "function"),
		i(2),
		i(3, "//content"),
	})),
})

--ls.add_snippets("javascript", {
--	s({trig = "<(.*)[^/]>", regTrig = true} ,{
--		f(function(args, snip)
--			local start_tag = "<" .. snip.captures[1] .. ">"
--			return start_tag
--		end),
--		i(1),
--		f(function(args, snip)
--			local end_tag = "</" .. snip.captures[1]:gmatch("%w+")() .. ">"
--			return end_tag
--		end),
--	}),
--
--}, {type = "autosnippets"})







ls.add_snippets("javascriptreact", {
	-- Funciton 
	s("fn", fmt([[
	function {}({}){{
		{}
	}}
	]], {
		i(1, "function"),
		i(2),
		i(3, "//content"),
	})),

	-- Arrow Funciton 
	s("arrow", fmt([[
	const {} = ({}) => {{
		{}
	}}
	]], {
		i(1, "function"),
		i(2),
		i(3, "//content"),
	})),
})

ls.add_snippets("javascriptreact", {
	s({trig = "<(.*[^/])>", regTrig = true} ,{
		f(function(_, snip)
			local start_tag = "<" .. snip.captures[1] .. ">"
			return start_tag
		end),
		i(1),
		f(function(_, snip)
			local end_tag = "</" .. snip.captures[1]:gmatch("%w+")() .. ">"
			return end_tag
		end),
	}),

}, {type = "autosnippets"})

