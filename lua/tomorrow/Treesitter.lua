local Treesitter = {
		TSComment = {fg = C.gray, },
		TSAnnotation = {fg = C.blue, },
		TSAttribute = {fg = C.red, },
		TSConstructor = {fg = C.yellow, },
		TSType = {fg = C.yellow, },
		TSTypeBuiltin = {fg = C.yellow, },
		TSConditional = {fg = C.yellow, },
		TSException = {fg = C.purple, },
		TSInclude = {fg = C.purple, },
		TSKeywordReturn = {fg = C.purple, },
		TSKeyword = {fg = C.purple, },
		TSKeywordFunction = {fg = C.purple, },
		TSLabel = {fg = C.red, },
		TSNamespace = {fg = C.yellow, },
		TSRepeat = {fg = C.purple, },
		TSConstant = {fg = C.orange, },
		TSConstBuiltin = {fg = C.orange, },
		TSFloat = {fg = C.orange, },
		TSNumber = {fg = C.orange, },
		TSBoolean = {fg = C.orange, },
		TSCharacter = {fg = C.orange, },
		TSError = {fg = C.error_red, },
		TSFunction = {fg = C.blue, },
		TSFuncBuiltin = {fg = C.blue, },
		TSMethod = {fg = C.blue, },
		TSConstMacro = {fg = C.cyan, },
		TSFuncMacro = {fg = C.blue, },
		TSVariable = {fg = C.red, },
		TSVariableBuiltin = {fg = C.cyan, },
		TSProperty = {fg = C.fg, },
		TSOperator = {fg = C.cyan, },
		TSField = {fg = C.red, },
		TSParameter = {fg = C.orange, },
		TSParameterReference = {fg = C.red, },
		TSSymbol = {fg = C.red, },
		TSText = {fg = C.fg, },
		TSPunctDelimiter = {fg = C.fg, },
		TSTagDelimiter = {fg = C.gray, },
		TSTagAttribute = {fg = C.yellow, },
		TSPunctBracket = {fg = C.fg, },
		TSPunctSpecial = {fg = C.fg, },
		TSString = {fg = C.green, },
		TSStringRegex = {fg = C.green, },
		TSStringEscape = {fg = C.green, },
		TSTag = {fg = C.red, },
		TSEmphasis = {style = "italic", },
		TSUnderline = {style = "underline", },
		TSTitle = {fg = C.fg, style = "bold", },
		TSLiteral = {fg = C.fg, },
		TSURI = {fg = C.cyan, style = "underline", },
		TSKeywordOperator = {fg = C.purple, },
		TSStructure = {fg = C.red, },
		TSStrong = {fg = C.orange, },
		TSQueryLinterError = {fg = C.warning_orange, },
}

return Treesitter