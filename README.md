# LunarVimColorschemes

Collection of colorschemes made to be compatible with LunarVim

## Setup

```sh
pip install -r requirements.txt
```

## Adding a template

I recommend copying one of the themes in template and using it as a base to create your own

## Generate your colorscheme

```
python ez.py <your_cool_theme>.yml
```

## After generating your colorscheme the following configuration options should be available
```lua
vim.g.transparent_background = true        -- transparent background(Default: false)
vim.g.italic_comments = true               -- italic comments(Default: true)
vim.g.italic_keywords = true               -- italic keywords(Default: true)
vim.g.italic_functions = true              -- italic functions(Default: false)
vim.g.italic_variables = true              -- italic variables(Default: false)
```

**Credit** for the script for creating colorschemes: [repo](https://github.com/Murtaza-Udaipurwala/ez.nvim)
