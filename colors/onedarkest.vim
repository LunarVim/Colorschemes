" Author: Christian Chiarulli <chrisatmachine@gmail.com>

lua << EOF
package.loaded['onedarkest'] = nil
package.loaded['onedarkest.highlights'] = nil
package.loaded['onedarkest.Treesitter'] = nil
package.loaded['onedarkest.markdown'] = nil
package.loaded['onedarkest.Whichkey'] = nil
package.loaded['onedarkest.Git'] = nil
package.loaded['onedarkest.LSP'] = nil
package.loaded['onedarkest.Quickscope'] = nil
package.loaded['onedarkest.Telescope'] = nil
package.loaded['onedarkest.NvimTree'] = nil
package.loaded['onedarkest.Lir'] = nil
package.loaded['onedarkest.Buffer'] = nil
package.loaded['onedarkest.StatusLine'] = nil
package.loaded['onedarkest.IndentBlankline'] = nil
package.loaded['onedarkest.Dashboard'] = nil
package.loaded['onedarkest.DiffView'] = nil
package.loaded['onedarkest.Bookmarks'] = nil
package.loaded['onedarkest.Bqf'] = nil
package.loaded['onedarkest.Cmp'] = nil
package.loaded['onedarkest.Gps'] = nil
package.loaded['onedarkest.Packer'] = nil
package.loaded['onedarkest.SymbolOutline'] = nil
package.loaded['onedarkest.Notify'] = nil
package.loaded['onedarkest.Misc'] = nil
package.loaded['onedarkest.Crates'] = nil

require("onedarkest")
EOF
