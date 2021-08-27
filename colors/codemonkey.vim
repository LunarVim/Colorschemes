" Author: Christian Chiarulli <chrisatmachine@gmail.com>

lua << EOF
package.loaded['codemonkey'] = nil
package.loaded['codemonkey.highlights'] = nil
package.loaded['codemonkey.Treesitter'] = nil
package.loaded['codemonkey.markdown'] = nil
package.loaded['codemonkey.Whichkey'] = nil
package.loaded['codemonkey.Git'] = nil
package.loaded['codemonkey.LSP'] = nil

require("codemonkey")
EOF
