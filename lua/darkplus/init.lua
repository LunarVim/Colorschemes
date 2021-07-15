vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "darkplus"

local util = require("darkplus.util")
Config = require("darkplus.config")
C = require("darkplus.palette")
local highlights = require("darkplus.highlights")
local Treesitter = require("darkplus.Treesitter")
local markdown = require("darkplus.markdown")
local Whichkey = require("darkplus.Whichkey")
local Git = require("darkplus.Git")
local LSP = require("darkplus.LSP")


local skeletons = {
    highlights, Treesitter, markdown, Whichkey, Git, LSP
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end