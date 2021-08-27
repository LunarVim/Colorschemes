" Author: Christian Chiarulli <chrisatmachine@gmail.com>

lua << EOF
package.loaded['onedark'] = nil
package.loaded['onedark.highlights'] = nil
package.loaded['onedark.Treesitter'] = nil
package.loaded['onedark.markdown'] = nil
package.loaded['onedark.Whichkey'] = nil
package.loaded['onedark.Git'] = nil
package.loaded['onedark.LSP'] = nil

require("onedark")
EOF
