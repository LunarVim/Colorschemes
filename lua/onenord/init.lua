vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "onenord"

local util = require("onenord.util")
Config = require("onenord.config")
C = require("onenord.palette")
local highlights = require("onenord.highlights")
local Treesitter = require("onenord.Treesitter")
local markdown = require("onenord.markdown")
local Whichkey = require("onenord.Whichkey")
local Git = require("onenord.Git")
local LSP = require("onenord.LSP")
local Quickscope = require("onenord.Quickscope")
local Telescope = require("onenord.Telescope")
local NvimTree = require("onenord.NvimTree")
local Lir = require("onenord.Lir")
local Buffer = require("onenord.Buffer")
local StatusLine = require("onenord.StatusLine")
local IndentBlankline = require("onenord.IndentBlankline")
local Dashboard = require("onenord.Dashboard")
local DiffView = require("onenord.DiffView")
local Bookmarks = require("onenord.Bookmarks")
local Bqf = require("onenord.Bqf")
local Cmp = require("onenord.Cmp")
local Gps = require("onenord.Gps")
local Packer = require("onenord.Packer")
local SymbolOutline = require("onenord.SymbolOutline")
local Notify = require("onenord.Notify")
local Misc = require("onenord.Misc")
local Crates = require("onenord.Crates")


local skeletons = {
    highlights, Treesitter, markdown, Whichkey, Git, LSP, Quickscope, Telescope, NvimTree, Lir, Buffer, StatusLine, IndentBlankline, Dashboard, DiffView, Bookmarks, Bqf, Cmp, Gps, Packer, SymbolOutline, Notify, Misc, Crates
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end