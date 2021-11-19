" Author: Christian Chiarulli <chrisatmachine@gmail.com>

lua << EOF
package.loaded['tomorrow'] = nil
package.loaded['tomorrow.highlights'] = nil
package.loaded['tomorrow.Treesitter'] = nil
package.loaded['tomorrow.markdown'] = nil
package.loaded['tomorrow.Whichkey'] = nil
package.loaded['tomorrow.Git'] = nil
package.loaded['tomorrow.LSP'] = nil
package.loaded['tomorrow.Quickscope'] = nil
package.loaded['tomorrow.Telescope'] = nil
package.loaded['tomorrow.NvimTree'] = nil
package.loaded['tomorrow.Lir'] = nil
package.loaded['tomorrow.Buffer'] = nil
package.loaded['tomorrow.StatusLine'] = nil
package.loaded['tomorrow.IndentBlankline'] = nil
package.loaded['tomorrow.Dashboard'] = nil
package.loaded['tomorrow.DiffView'] = nil
package.loaded['tomorrow.Bookmarks'] = nil
package.loaded['tomorrow.Bqf'] = nil
package.loaded['tomorrow.Cmp'] = nil
package.loaded['tomorrow.SymbolOutline'] = nil
package.loaded['tomorrow.Misc'] = nil

require("tomorrow")
EOF
