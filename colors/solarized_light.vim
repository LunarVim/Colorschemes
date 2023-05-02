" Author: Maxim Sokolov <maximsok@gmail.com> based on onedarker by Christian Chiarulli <chrisatmachine@gmail.com>

lua << EOF
package.loaded['solarized_light'] = nil
package.loaded['solarized_light.highlights'] = nil
package.loaded['solarized_light.Treesitter'] = nil
package.loaded['solarized_light.markdown'] = nil
package.loaded['solarized_light.Whichkey'] = nil
package.loaded['solarized_light.Git'] = nil
package.loaded['solarized_light.LSP'] = nil
package.loaded['solarized_light.Quickscope'] = nil
package.loaded['solarized_light.Telescope'] = nil
package.loaded['solarized_light.NvimTree'] = nil
package.loaded['solarized_light.Lir'] = nil
package.loaded['solarized_light.Buffer'] = nil
package.loaded['solarized_light.StatusLine'] = nil
package.loaded['solarized_light.IndentBlankline'] = nil
package.loaded['solarized_light.Dashboard'] = nil
package.loaded['solarized_light.DiffView'] = nil
package.loaded['solarized_light.Bookmarks'] = nil
package.loaded['solarized_light.Bqf'] = nil
package.loaded['solarized_light.Cmp'] = nil
package.loaded['solarized_light.Navic'] = nil
package.loaded['solarized_light.Gps'] = nil
package.loaded['solarized_light.Packer'] = nil
package.loaded['solarized_light.SymbolOutline'] = nil
package.loaded['solarized_light.Notify'] = nil
package.loaded['solarized_light.Hop'] = nil
package.loaded['solarized_light.Misc'] = nil
package.loaded['solarized_light.Crates'] = nil

require("solarized_light")
EOF
