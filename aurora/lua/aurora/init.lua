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


local skeletons = {
    highlights
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end