" Author: Christian Chiarulli <chrisatmachine@gmail.com>

lua << EOF
package.loaded['onedarker'] = nil
package.loaded['onedarker.highlights'] = nil
package.loaded['onedarker.Treesitter'] = nil
package.loaded['onedarker.markdown'] = nil
package.loaded['onedarker.Whichkey'] = nil
package.loaded['onedarker.Git'] = nil
package.loaded['onedarker.LSP'] = nil
package.loaded['onedarker.Quickscope'] = nil
package.loaded['onedarker.Telescope'] = nil
package.loaded['onedarker.NvimTree'] = nil
package.loaded['onedarker.Lir'] = nil
package.loaded['onedarker.Buffer'] = nil
package.loaded['onedarker.StatusLine'] = nil
package.loaded['onedarker.IndentBlankline'] = nil
package.loaded['onedarker.Dashboard'] = nil
package.loaded['onedarker.DiffView'] = nil
package.loaded['onedarker.Bookmarks'] = nil
package.loaded['onedarker.Bqf'] = nil
package.loaded['onedarker.Cmp'] = nil
package.loaded['onedarker.Navic'] = nil
package.loaded['onedarker.Gps'] = nil
package.loaded['onedarker.Packer'] = nil
package.loaded['onedarker.SymbolOutline'] = nil
package.loaded['onedarker.Notify'] = nil
package.loaded['onedarker.Hop'] = nil
package.loaded['onedarker.Misc'] = nil
package.loaded['onedarker.Crates'] = nil

require("onedarker")
EOF
