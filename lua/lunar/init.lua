vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "lunar"

local util = require("lunar.util")
Config = require("lunar.config")
C = require("lunar.palette")
local highlights = require("lunar.highlights")
local Treesitter = require("lunar.Treesitter")
local markdown = require("lunar.markdown")
local Whichkey = require("lunar.Whichkey")
local Git = require("lunar.Git")
local LSP = require("lunar.LSP")
local Quickscope = require("lunar.Quickscope")
local Telescope = require("lunar.Telescope")
local NvimTree = require("lunar.NvimTree")
local Lir = require("lunar.Lir")
local Buffer = require("lunar.Buffer")
local StatusLine = require("lunar.StatusLine")
local IndentBlankline = require("lunar.IndentBlankline")
local Dashboard = require("lunar.Dashboard")
local DiffView = require("lunar.DiffView")
local Bookmarks = require("lunar.Bookmarks")
local Bqf = require("lunar.Bqf")
local Cmp = require("lunar.Cmp")
local Packer = require("lunar.Packer")
local SymbolOutline = require("lunar.SymbolOutline")
local Notify = require("lunar.Notify")
local Misc = require("lunar.Misc")


local skeletons = {
    highlights, Treesitter, markdown, Whichkey, Git, LSP, Quickscope, Telescope, NvimTree, Lir, Buffer, StatusLine, IndentBlankline, Dashboard, DiffView, Bookmarks, Bqf, Cmp, Packer, SymbolOutline, Notify, Misc
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end