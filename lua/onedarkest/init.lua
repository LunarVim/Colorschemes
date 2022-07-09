vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "onedarkest"

local util = require("onedarkest.util")
Config = require("onedarkest.config")
C = require("onedarkest.palette")
local highlights = require("onedarkest.highlights")
local Treesitter = require("onedarkest.Treesitter")
local markdown = require("onedarkest.markdown")
local Whichkey = require("onedarkest.Whichkey")
local Git = require("onedarkest.Git")
local LSP = require("onedarkest.LSP")
local Quickscope = require("onedarkest.Quickscope")
local Telescope = require("onedarkest.Telescope")
local NvimTree = require("onedarkest.NvimTree")
local Lir = require("onedarkest.Lir")
local Buffer = require("onedarkest.Buffer")
local StatusLine = require("onedarkest.StatusLine")
local IndentBlankline = require("onedarkest.IndentBlankline")
local Dashboard = require("onedarkest.Dashboard")
local DiffView = require("onedarkest.DiffView")
local Bookmarks = require("onedarkest.Bookmarks")
local Bqf = require("onedarkest.Bqf")
local Cmp = require("onedarkest.Cmp")
local Gps = require("onedarkest.Gps")
local Packer = require("onedarkest.Packer")
local SymbolOutline = require("onedarkest.SymbolOutline")
local Notify = require("onedarkest.Notify")
local Misc = require("onedarkest.Misc")
local Crates = require("onedarkest.Crates")


local skeletons = {
    highlights, Treesitter, markdown, Whichkey, Git, LSP, Quickscope, Telescope, NvimTree, Lir, Buffer, StatusLine, IndentBlankline, Dashboard, DiffView, Bookmarks, Bqf, Cmp, Gps, Packer, SymbolOutline, Notify, Misc, Crates
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end