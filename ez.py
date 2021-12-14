#!/usr/bin/env python3

# Author: Murtaza Udaipurwala <https://github.com/Murtaza-Udaipurwala>

import yaml
import os
import argparse
import sys


def parse_arguments():
    parser = argparse.ArgumentParser()
    parser.add_argument('filename', type=argparse.FileType('r'),
                        help='pass a filename')
    args = parser.parse_args()
    return args


def write(fname, content):
    with open(os.path.join(base_path, fname), 'w') as fhand:
        fhand.write(content)


def colors(name, author, keys):
    loaded = f"package.loaded['{name}'] = nil\n"
    for key in keys:
        loaded += f"package.loaded['{name}.{key}'] = nil\n"

    code = f'''" Author: {author}\n
lua << EOF
{loaded}
require("{name}")
EOF
'''

    with open(os.path.join(os.path.join(name, 'colors', f'{name}.vim')), 'w') as fhand:
        fhand.write(code)


def config(name):
    code = '''local config

vim = vim or { g = {}, o = {} }

local function opt(key, default)
    if vim.g[key] == nil then
        return default
    end
    if vim.g[key] == 0 then
        return false
    end
    return vim.g[key]
end

config = {
    transparent_background = opt("transparent_background", false),
    italic_comments = opt("italic_keywords", true) and "italic" or "NONE",
    italic_keywords = opt("italic_keywords", true) and "italic" or "NONE",
    italic_functions = opt("italic_function", false) and "italic" or "NONE",
    italic_variables = opt("italic_variables", true) and "italic" or "NONE",
}

return config'''

    write('config.lua', code)


def util():
    code = '''local M = {}

local function highlight(group, properties)
    local bg = properties.bg == nil and "" or "guibg=" .. properties.bg
    local fg = properties.fg == nil and "" or "guifg=" .. properties.fg
    local style = properties.style == nil and "" or "gui=" .. properties.style

    local cmd = table.concat({
        "highlight", group, bg, fg, style
    }, " ")

    vim.api.nvim_command(cmd)
end


function M.initialise(skeleton)
    for group, properties in pairs(skeleton) do
        highlight(group, properties)
    end
end

return M'''

    write('util.lua', code)


def init(name, background, keys):
    requirements = ""
    for key in keys:
        requirements += f'local {key} = require("{name}.{key}")\n'

    code = f'''vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end
vim.o.background = "{background}"
vim.o.termguicolors = true
vim.g.colors_name = "{name}"

local util = require("{name}.util")
Config = require("{name}.config")
C = require("{name}.palette")
{requirements}

local skeletons = {{
    {", ".join(keys)}
}}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end'''

    write('init.lua', code)


def gen_palette(palette):
    code = 'local colors = {\n'

    for key, value in palette.items():
        code += f'\t{key} = "{value}",\n'

    code += "}\n\nreturn colors"
    write('palette.lua', code)


def gen_skeleton(syntax, name, colorscheme_name):
    code = f'local {name} = {{\n'

    for key, value in syntax.items():
        group = key
        props = value.split(' ')
        prop_keys = ('fg', 'bg', 'style')
        if props[0] != '':
            skeleton = "\t" + group + " = {"
            for i in range(len(props)):
                if props[i] not in ['-', '.']:
                    if i == 2:
                        style = ','.join([styles[char] for char in props[i]])
                        skeleton += f'{prop_keys[i]} = "{style}", '
                    elif i == 1:
                        if group in ["Normal", "NormalNC", "MsgArea", "TelescopeBorder"]:
                            skeleton += f'{prop_keys[i]} = Config.transparent_background and "NONE" or C.{props[i]}, '
                        elif group == "Keyword":
                            skeleton += f'{prop_keys[i]} = Config.italic_keywords, '
                        elif group == "Comment":
                            skeleton += f'{prop_keys[i]} = Config.italic_comments, '
                        elif group == "Identifier":
                            skeleton += f'{prop_keys[i]} = Config.italic_variables, '
                        elif group == "Function":
                            skeleton += f'{prop_keys[i]} = Config.italic_functions, '
                        elif props[i][0] == '#':
                            skeleton += f'{prop_keys[i]} = "{props[i]}", '
                        else:
                            skeleton += f"{prop_keys[i]} = C.{props[i]}, "
                    else:
                        if props[i][0] == '#':
                            skeleton += f'{prop_keys[i]} = "{props[i]}", '
                        else:
                            skeleton += f"{prop_keys[i]} = C.{props[i]}, "
            code += '\t' + skeleton + '},\n'

    code += "}\n\nreturn " + name
    write(f'{name}.lua', code)


if __name__ == "__main__":
    args = parse_arguments()
    with args.filename as fhand:
        if fhand.name.endswith('.yml') or fhand.name.endswith('.yaml'):
            obj = yaml.safe_load(fhand)
        else:
            print("File must have an extension .yml or .yaml")
            sys.exit()

    keys = [key for key in obj]
    if 'palette' not in keys:
        print("palette key not found in yaml file")
        sys.exit()
    elif 'information' not in keys:
        print("information key not found in yaml file")
        sys.exit()

    styles = {
        'i': 'italic',
        'b': 'bold',
        'u': 'underline',
        'r': 'reverse',
        's': 'strikethrough'
    }
    colorscheme = obj['information']['name']
    author = obj['information']['author']
    background = obj['information']['background']
    base_path = os.path.join(colorscheme, 'lua', colorscheme)

    try:
        os.makedirs(base_path)
        path = os.path.join(colorscheme, "colors")
        os.makedirs(path)
    except:
        pass

    keys.remove('palette')
    keys.remove('information')

    gen_palette(obj['palette'])
    init(colorscheme, background, keys)
    util()
    colors(colorscheme, author, keys)
    config(colorscheme)

    for key in keys:
        gen_skeleton(obj[key], key, colorscheme)
