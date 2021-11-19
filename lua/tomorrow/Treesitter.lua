local Treesitter = {
		TSComment = {fg = C.gray, },
		TSAnnotation = {fg = C.yellow, },
		TSAttribute = {fg = C.cyan, },
		TSConstructor = {fg = C.cyan, },
		TSType = {fg = C.yellow, },
		TSTypeBuiltin = {fg = C.yellow, },
		TSConditional = {fg = C.blue, },
		TSException = {fg = C.purple, },
		TSInclude = {fg = C.purple, },
		TSKeywordReturn = {fg = C.purple, },
		TSKeyword = {fg = C.purple, },
		TSKeywordFunction = {fg = C.purple, },
		TSLabel = {fg = C.red, },
		TSNamespace = {fg = C.cyan, },
		TSRepeat = {fg = C.purple, },
		TSConstant = {fg = C.orange, },
		TSConstBuiltin = {fg = C.vivid_blue, },
		TSFloat = {fg = C.light_green, },
		TSNumber = {fg = C.light_green, },
		TSBoolean = {fg = C.orange, },
		TSCharacter = {fg = C.orange, },
		TSError = {fg = C.error_red, },
		TSFunction = {fg = C.blue, },
		TSFuncBuiltin = {fg = C.blue, },
		TSMethod = {fg = C.yellow, },
		TSConstMacro = {fg = C.cyan, },
		TSFuncMacro = {fg = C.blue, },
		TSVariable = {fg = C.red, },
		TSVariableBuiltin = {fg = C.cyan, },
		TSProperty = {fg = C.yellow, },
		TSOperator = {fg = C.cyan, },
		TSField = {fg = C.red, },
		TSParameter = {fg = C.orange, },
		TSParameterReference = {fg = C.red, },
		TSSymbol = {fg = C.red, },
		TSText = {fg = C.fg, },
		TSPunctDelimiter = {fg = C.fg, },
		TSTagDelimiter = {fg = C.gray, },
		TSPunctBracket = {fg = C.fg, },
		TSPunctSpecial = {fg = C.fg, },
		TSString = {fg = C.green, },
		TSStringRegex = {fg = C.green, },
		TSStringEscape = {fg = C.green, },
		TSTag = {fg = C.red, },
		TSEmphasis = {style = "italic", },
		TSUnderline = {style = "underline", },
		TSTitle = {fg = C.fg, style = "bold", },
		TSLiteral = {fg = C.yellow_orange, },
		TSURI = {fg = C.yellow_orange, style = "underline", },
		TSKeywordOperator = {fg = C.purple, },
		TSStructure = {fg = C.red, },
		TSStrong = {fg = C.yellow_orange, },
		TSQueryLinterError = {fg = C.warning_orange, },
}

return Treesitter