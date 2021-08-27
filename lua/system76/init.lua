vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "system76"

local util = require("system76.util")
Config = require("system76.config")
C = require("system76.palette")
local highlights = require("system76.highlights")
local Treesitter = require("system76.Treesitter")
local markdown = require("system76.markdown")
local Whichkey = require("system76.Whichkey")
local Git = require("system76.Git")
local LSP = require("system76.LSP")


local skeletons = {
    highlights, Treesitter, markdown, Whichkey, Git, LSP
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end