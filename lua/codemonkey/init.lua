vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "codemonkey"

local util = require("codemonkey.util")
Config = require("codemonkey.config")
C = require("codemonkey.palette")
local highlights = require("codemonkey.highlights")
local Treesitter = require("codemonkey.Treesitter")
local markdown = require("codemonkey.markdown")
local Whichkey = require("codemonkey.Whichkey")
local Git = require("codemonkey.Git")
local LSP = require("codemonkey.LSP")


local skeletons = {
    highlights, Treesitter, markdown, Whichkey, Git, LSP
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end