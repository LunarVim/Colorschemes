vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end
vim.o.background = "light"
vim.o.termguicolors = true
vim.g.colors_name = "solarized_light"

local util = require("solarized_light.util")
Config = require("solarized_light.config")
C = require("solarized_light.palette")
local highlights = require("solarized_light.highlights")
local Treesitter = require("solarized_light.Treesitter")
local markdown = require("solarized_light.markdown")
local Whichkey = require("solarized_light.Whichkey")
local Git = require("solarized_light.Git")
local LSP = require("solarized_light.LSP")
local Quickscope = require("solarized_light.Quickscope")
local Telescope = require("solarized_light.Telescope")
local NvimTree = require("solarized_light.NvimTree")
local Lir = require("solarized_light.Lir")
local Buffer = require("solarized_light.Buffer")
local StatusLine = require("solarized_light.StatusLine")
local IndentBlankline = require("solarized_light.IndentBlankline")
local Dashboard = require("solarized_light.Dashboard")
local DiffView = require("solarized_light.DiffView")
local Bookmarks = require("solarized_light.Bookmarks")
local Bqf = require("solarized_light.Bqf")
local Cmp = require("solarized_light.Cmp")
local Navic = require("solarized_light.Navic")
local Gps = require("solarized_light.Gps")
local Packer = require("solarized_light.Packer")
local SymbolOutline = require("solarized_light.SymbolOutline")
local Notify = require("solarized_light.Notify")
local Hop = require("solarized_light.Hop")
local Misc = require("solarized_light.Misc")
local Crates = require("solarized_light.Crates")


local skeletons = {
    highlights, Treesitter, markdown, Whichkey, Git, LSP, Quickscope, Telescope, NvimTree, Lir, Buffer, StatusLine, IndentBlankline, Dashboard, DiffView, Bookmarks, Bqf, Cmp, Navic, Gps, Packer, SymbolOutline, Notify, Hop, Misc, Crates
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end