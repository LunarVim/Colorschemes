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
local Treesitter = require("aurora.Treesitter")
local markdown = require("aurora.markdown")
local Whichkey = require("aurora.Whichkey")
local Git = require("aurora.Git")
local LSP = require("aurora.LSP")


local skeletons = {
    highlights, Treesitter, markdown, Whichkey, Git, LSP
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end