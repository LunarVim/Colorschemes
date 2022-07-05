" Author: Christian Chiarulli <chrisatmachine@gmail.com>

lua << EOF
package.loaded['onenord'] = nil
package.loaded['onenord.highlights'] = nil
package.loaded['onenord.Treesitter'] = nil
package.loaded['onenord.markdown'] = nil
package.loaded['onenord.Whichkey'] = nil
package.loaded['onenord.Git'] = nil
package.loaded['onenord.LSP'] = nil
package.loaded['onenord.Quickscope'] = nil
package.loaded['onenord.Telescope'] = nil
package.loaded['onenord.NvimTree'] = nil
package.loaded['onenord.Lir'] = nil
package.loaded['onenord.Buffer'] = nil
package.loaded['onenord.StatusLine'] = nil
package.loaded['onenord.IndentBlankline'] = nil
package.loaded['onenord.Dashboard'] = nil
package.loaded['onenord.DiffView'] = nil
package.loaded['onenord.Bookmarks'] = nil
package.loaded['onenord.Bqf'] = nil
package.loaded['onenord.Cmp'] = nil
package.loaded['onenord.Gps'] = nil
package.loaded['onenord.Packer'] = nil
package.loaded['onenord.SymbolOutline'] = nil
package.loaded['onenord.Notify'] = nil
package.loaded['onenord.Misc'] = nil
package.loaded['onenord.Crates'] = nil

require("onenord")
EOF
