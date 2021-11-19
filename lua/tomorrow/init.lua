vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "tomorrow"

local util = require("tomorrow.util")
Config = require("tomorrow.config")
C = require("tomorrow.palette")
local highlights = require("tomorrow.highlights")
local Treesitter = require("tomorrow.Treesitter")
local markdown = require("tomorrow.markdown")
local Whichkey = require("tomorrow.Whichkey")
local Git = require("tomorrow.Git")
local LSP = require("tomorrow.LSP")
local Quickscope = require("tomorrow.Quickscope")
local Telescope = require("tomorrow.Telescope")
local NvimTree = require("tomorrow.NvimTree")
local Lir = require("tomorrow.Lir")
local Buffer = require("tomorrow.Buffer")
local StatusLine = require("tomorrow.StatusLine")
local IndentBlankline = require("tomorrow.IndentBlankline")
local Dashboard = require("tomorrow.Dashboard")
local DiffView = require("tomorrow.DiffView")
local Bookmarks = require("tomorrow.Bookmarks")
local Bqf = require("tomorrow.Bqf")
local Cmp = require("tomorrow.Cmp")
local SymbolOutline = require("tomorrow.SymbolOutline")
local Misc = require("tomorrow.Misc")


local skeletons = {
    highlights, Treesitter, markdown, Whichkey, Git, LSP, Quickscope, Telescope, NvimTree, Lir, Buffer, StatusLine, IndentBlankline, Dashboard, DiffView, Bookmarks, Bqf, Cmp, SymbolOutline, Misc
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end