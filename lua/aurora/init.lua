vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "aurora"

local util = require("aurora.util")
Config = require("aurora.config")
C = require("aurora.palette")
local highlights = require("aurora.highlights")
local treesitter = require("aurora.treesitter")
local markdown = require("aurora.markdown")
local whichkey = require("aurora.whichkey")
local git = require("aurora.git")
local lsp = require("aurora.lsp")


local skeletons = {
    highlights, treesitter, markdown, whichkey, git, lsp
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end