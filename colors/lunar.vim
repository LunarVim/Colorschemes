" Author: Christian Chiarulli <chrisatmachine@gmail.com>

lua << EOF
package.loaded['lunar'] = nil
package.loaded['lunar.highlights'] = nil
package.loaded['lunar.Treesitter'] = nil
package.loaded['lunar.markdown'] = nil
package.loaded['lunar.Whichkey'] = nil
package.loaded['lunar.Git'] = nil
package.loaded['lunar.LSP'] = nil
package.loaded['lunar.Quickscope'] = nil
package.loaded['lunar.Telescope'] = nil
package.loaded['lunar.NvimTree'] = nil
package.loaded['lunar.Lir'] = nil
package.loaded['lunar.Buffer'] = nil
package.loaded['lunar.StatusLine'] = nil
package.loaded['lunar.IndentBlankline'] = nil
package.loaded['lunar.Dashboard'] = nil
package.loaded['lunar.DiffView'] = nil
package.loaded['lunar.Bookmarks'] = nil
package.loaded['lunar.Bqf'] = nil
package.loaded['lunar.Cmp'] = nil
package.loaded['lunar.Packer'] = nil
package.loaded['lunar.SymbolOutline'] = nil
package.loaded['lunar.Notify'] = nil
package.loaded['lunar.Misc'] = nil

require("lunar")
EOF
