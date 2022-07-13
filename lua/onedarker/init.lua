vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "onedarker"

local util = require("onedarker.util")
Config = require("onedarker.config")
C = require("onedarker.palette")
local highlights = require("onedarker.highlights")
local Treesitter = require("onedarker.Treesitter")
local markdown = require("onedarker.markdown")
local Whichkey = require("onedarker.Whichkey")
local Git = require("onedarker.Git")
local LSP = require("onedarker.LSP")
local Quickscope = require("onedarker.Quickscope")
local Telescope = require("onedarker.Telescope")
local NvimTree = require("onedarker.NvimTree")
local Lir = require("onedarker.Lir")
local Buffer = require("onedarker.Buffer")
local StatusLine = require("onedarker.StatusLine")
local IndentBlankline = require("onedarker.IndentBlankline")
local Dashboard = require("onedarker.Dashboard")
local DiffView = require("onedarker.DiffView")
local Bookmarks = require("onedarker.Bookmarks")
local Bqf = require("onedarker.Bqf")
local Cmp = require("onedarker.Cmp")
local Navic = require("onedarker.Navic")
local Gps = require("onedarker.Gps")
local Packer = require("onedarker.Packer")
local SymbolOutline = require("onedarker.SymbolOutline")
local Notify = require("onedarker.Notify")
local Hop = require("onedarker.Hop")
local Misc = require("onedarker.Misc")
local Crates = require("onedarker.Crates")


local skeletons = {
    highlights, Treesitter, markdown, Whichkey, Git, LSP, Quickscope, Telescope, NvimTree, Lir, Buffer, StatusLine, IndentBlankline, Dashboard, DiffView, Bookmarks, Bqf, Cmp, Navic, Gps, Packer, SymbolOutline, Notify, Hop, Misc, Crates
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end