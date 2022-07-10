" Author: Christian Chiarulli <chrisatmachine@gmail.com>

lua << EOF
package.loaded['onedark'] = nil
package.loaded['onedark.highlights'] = nil
package.loaded['onedark.Treesitter'] = nil
package.loaded['onedark.markdown'] = nil
package.loaded['onedark.Whichkey'] = nil
package.loaded['onedark.Git'] = nil
package.loaded['onedark.LSP'] = nil
package.loaded['onedark.Quickscope'] = nil
package.loaded['onedark.Telescope'] = nil
package.loaded['onedark.NvimTree'] = nil
package.loaded['onedark.Lir'] = nil
package.loaded['onedark.Buffer'] = nil
package.loaded['onedark.StatusLine'] = nil
package.loaded['onedark.IndentBlankline'] = nil
package.loaded['onedark.Dashboard'] = nil
package.loaded['onedark.DiffView'] = nil
package.loaded['onedark.Bookmarks'] = nil
package.loaded['onedark.Bqf'] = nil
package.loaded['onedark.Cmp'] = nil
package.loaded['onedark.Gps'] = nil
package.loaded['onedark.Packer'] = nil
package.loaded['onedark.SymbolOutline'] = nil
package.loaded['onedark.Notify'] = nil
package.loaded['onedark.Hop'] = nil
package.loaded['onedark.Misc'] = nil
package.loaded['onedark.Crates'] = nil

require("onedark")
EOF
