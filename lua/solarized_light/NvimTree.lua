local NvimTree = {
		NvimTreeFolderIcon = {fg = C.blue, },
		NvimTreeIndentMarker = {fg = C.base02, },
		NvimTreeNormal = {fg = C.base00, bg = C.base3, },
		NvimTreeVertSplit = {fg = C.alt_bg, bg = C.alt_bg, },
		NvimTreeFolderName = {fg = C.blue, },
		NvimTreeOpenedFolderName = {fg = C.blue, style = "bold,italic", },
		NvimTreeEmptyFolderName = {fg = C.gray, style = "italic", },
		NvimTreeGitIgnored = {fg = C.gray, style = "italic", },
		NvimTreeImageFile = {fg = C.light_gray, },
		NvimTreeSpecialFile = {fg = C.orange, },
		NvimTreeEndOfBuffer = {fg = C.tree_gray, },
		NvimTreeCursorLine = {bg = C.base2, },
		NvimTreeGitignoreIcon = {fg = "#dc322f", },
		NvimTreeGitStaged = {fg = C.tree_sign_add, },
		NvimTreeGitNew = {fg = C.tree_sign_add, },
		NvimTreeGitRenamed = {fg = C.tree_sign_add, },
		NvimTreeGitDeleted = {fg = C.sign_delete, },
		NvimTreeGitMerge = {fg = C.tree_sign_change, },
		NvimTreeGitDirty = {fg = C.tree_sign_change, },
		NvimTreeSymlink = {fg = C.cyan, },
		NvimTreeRootFolder = {fg = C.fg, style = "bold", },
		NvimTreeExecFile = {fg = C.magenta, },
}

return NvimTree