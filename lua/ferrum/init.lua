vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "ferrum"

local util = require("ferrum.util")
Config = require("ferrum.config")
C = require("ferrum.palette")
local highlights = require("ferrum.highlights")
local Treesitter = require("ferrum.Treesitter")
local markdown = require("ferrum.markdown")
local Whichkey = require("ferrum.Whichkey")
local Git = require("ferrum.Git")
local LSP = require("ferrum.LSP")
local Quickscope = require("ferrum.Quickscope")
local Telescope = require("ferrum.Telescope")
local NvimTree = require("ferrum.NvimTree")
local Lir = require("ferrum.Lir")
local Buffer = require("ferrum.Buffer")
local StatusLine = require("ferrum.StatusLine")
local IndentBlankline = require("ferrum.IndentBlankline")
local Dashboard = require("ferrum.Dashboard")
local DiffView = require("ferrum.DiffView")
local Bookmarks = require("ferrum.Bookmarks")
local Bqf = require("ferrum.Bqf")
local Cmp = require("ferrum.Cmp")
local Gps = require("ferrum.Gps")
local Packer = require("ferrum.Packer")
local SymbolOutline = require("ferrum.SymbolOutline")
local Notify = require("ferrum.Notify")
local Misc = require("ferrum.Misc")
local Crates = require("ferrum.Crates")


local skeletons = {
    highlights, Treesitter, markdown, Whichkey, Git, LSP, Quickscope, Telescope, NvimTree, Lir, Buffer, StatusLine, IndentBlankline, Dashboard, DiffView, Bookmarks, Bqf, Cmp, Gps, Packer, SymbolOutline, Notify, Misc, Crates
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end