" Author: Christian Chiarulli <chrisatmachine@gmail.com>

lua << EOF
package.loaded['ferrum'] = nil
package.loaded['ferrum.highlights'] = nil
package.loaded['ferrum.Treesitter'] = nil
package.loaded['ferrum.markdown'] = nil
package.loaded['ferrum.Whichkey'] = nil
package.loaded['ferrum.Git'] = nil
package.loaded['ferrum.LSP'] = nil
package.loaded['ferrum.Quickscope'] = nil
package.loaded['ferrum.Telescope'] = nil
package.loaded['ferrum.NvimTree'] = nil
package.loaded['ferrum.Lir'] = nil
package.loaded['ferrum.Buffer'] = nil
package.loaded['ferrum.StatusLine'] = nil
package.loaded['ferrum.IndentBlankline'] = nil
package.loaded['ferrum.Dashboard'] = nil
package.loaded['ferrum.DiffView'] = nil
package.loaded['ferrum.Bookmarks'] = nil
package.loaded['ferrum.Bqf'] = nil
package.loaded['ferrum.Cmp'] = nil
package.loaded['ferrum.Gps'] = nil
package.loaded['ferrum.Packer'] = nil
package.loaded['ferrum.SymbolOutline'] = nil
package.loaded['ferrum.Notify'] = nil
package.loaded['ferrum.Misc'] = nil
package.loaded['ferrum.Crates'] = nil

require("ferrum")
EOF
