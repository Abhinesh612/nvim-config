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

--ls.add_snippets("c", {
--	-- Funciton 
--	s("fn", fmt([[
--	function {}({}){{
--		{}
--	}}
--	]], {
--		i(1, "function"),
--		i(2),
--		i(3, "//content"),
--	})),
--
--})
