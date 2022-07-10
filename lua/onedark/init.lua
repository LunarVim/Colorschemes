vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "onedark"

local util = require("onedark.util")
Config = require("onedark.config")
C = require("onedark.palette")
local highlights = require("onedark.highlights")
local Treesitter = require("onedark.Treesitter")
local markdown = require("onedark.markdown")
local Whichkey = require("onedark.Whichkey")
local Git = require("onedark.Git")
local LSP = require("onedark.LSP")
local Quickscope = require("onedark.Quickscope")
local Telescope = require("onedark.Telescope")
local NvimTree = require("onedark.NvimTree")
local Lir = require("onedark.Lir")
local Buffer = require("onedark.Buffer")
local StatusLine = require("onedark.StatusLine")
local IndentBlankline = require("onedark.IndentBlankline")
local Dashboard = require("onedark.Dashboard")
local DiffView = require("onedark.DiffView")
local Bookmarks = require("onedark.Bookmarks")
local Bqf = require("onedark.Bqf")
local Cmp = require("onedark.Cmp")
local Gps = require("onedark.Gps")
local Packer = require("onedark.Packer")
local SymbolOutline = require("onedark.SymbolOutline")
local Notify = require("onedark.Notify")
local Hop = require("onedark.Hop")
local Misc = require("onedark.Misc")
local Crates = require("onedark.Crates")


local skeletons = {
    highlights, Treesitter, markdown, Whichkey, Git, LSP, Quickscope, Telescope, NvimTree, Lir, Buffer, StatusLine, IndentBlankline, Dashboard, DiffView, Bookmarks, Bqf, Cmp, Gps, Packer, SymbolOutline, Notify, Hop, Misc, Crates
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end