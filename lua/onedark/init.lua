vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "onedark"

local util = require("onedark.util")
Config = require("onedark.config")
C = require("onedark.palette")

local async
async = vim.loop.new_async(vim.schedule_wrap(function ()
    

    local skeletons = {
        
    }

    for _, skeleton in ipairs(skeletons) do
        util.initialise(skeleton)
    end

    async:close()
end))

local highlights = require("onedark.highlights")
local Treesitter = require("onedark.Treesitter")
local markdown = require("onedark.markdown")
local Whichkey = require("onedark.Whichkey")
local Git = require("onedark.Git")
local LSP = require("onedark.LSP")


local skeletons = {
    highlights, Treesitter, markdown, Whichkey, Git, LSP
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end

async:send()