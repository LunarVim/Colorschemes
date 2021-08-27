" Author: Christian Chiarulli <chrisatmachine@gmail.com>

lua << EOF
package.loaded['darkplus'] = nil
package.loaded['darkplus.highlights'] = nil
package.loaded['darkplus.Treesitter'] = nil
package.loaded['darkplus.markdown'] = nil
package.loaded['darkplus.Whichkey'] = nil
package.loaded['darkplus.Git'] = nil
package.loaded['darkplus.LSP'] = nil

require("darkplus")
EOF
