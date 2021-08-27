" Author: Christian Chiarulli <chrisatmachine@gmail.com>

lua << EOF
package.loaded['aurora'] = nil
package.loaded['aurora.highlights'] = nil
package.loaded['aurora.Treesitter'] = nil
package.loaded['aurora.markdown'] = nil
package.loaded['aurora.Whichkey'] = nil
package.loaded['aurora.Git'] = nil
package.loaded['aurora.LSP'] = nil

require("aurora")
EOF
