" Author: Christian Chiarulli <chrisatmachine@gmail.com>

lua << EOF
package.loaded['system76'] = nil
package.loaded['system76.highlights'] = nil
package.loaded['system76.Treesitter'] = nil
package.loaded['system76.markdown'] = nil
package.loaded['system76.Whichkey'] = nil
package.loaded['system76.Git'] = nil
package.loaded['system76.LSP'] = nil

require("system76")
EOF
