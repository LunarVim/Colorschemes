vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "spacedark"

local util = require("spacedark.util")
Config = require("spacedark.config")
C = require("spacedark.palette")

local async
async = vim.loop.new_async(vim.schedule_wrap(function ()
    

    local skeletons = {
        
    }

    for _, skeleton in ipairs(skeletons) do
        util.initialise(skeleton)
    end

    async:close()
end))

local highlights = require("spacedark.highlights")
local Treesitter = require("spacedark.Treesitter")
local markdown = require("spacedark.markdown")
local Whichkey = require("spacedark.Whichkey")
local Git = require("spacedark.Git")
local LSP = require("spacedark.LSP")


local skeletons = {
    highlights, Treesitter, markdown, Whichkey, Git, LSP
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end

async:send()