local Treesitter = {
		TSComment = {fg = C.gray, },
		TSAnnotation = {fg = C.blue, },
		TSAttribute = {fg = C.blue, },
		TSConstructor = {fg = C.yellow, },
		TSType = {fg = C.yellow, },
		TSTypeBuiltin = {fg = C.yellow, },
		TSConditional = {fg = C.purple, },
		TSException = {fg = C.purple, },
		TSInclude = {fg = C.purple, },
		TSKeyword = {fg = C.purple, },
		TSKeywordReturn = {fg = C.purple, },
		TSKeywordFunction = {fg = C.purple, },
		TSLabel = {fg = C.red, },
		TSNone = {fg = C.fg, },
		TSNamespace = {fg = C.purple, },
		TSRepeat = {fg = C.purple, },
		TSConstant = {fg = C.red, },
		TSConstBuiltin = {fg = C.orange, },
		TSFloat = {fg = C.orange, },
		TSNumber = {fg = C.orange, },
		TSBoolean = {fg = C.orange, },
		TSCharacter = {fg = C.green, },
		TSError = {fg = C.error_red, },
		TSFunction = {fg = C.cyan, },
		TSFuncBuiltin = {fg = C.cyan, },
		TSMethod = {fg = C.cyan, },
		TSConstMacro = {fg = C.cyan, },
		TSFuncMacro = {fg = C.cyan, },
		TSProperty = {fg = C.blue, },
		TSOperator = {fg = C.purple, },
		TSField = {fg = C.blue, },
		TSParameter = {fg = C.red, },
		TSParameterReference = {fg = C.fg, },
		TSVariable = {fg = C.fg, },
		TSVariableBuiltin = {fg = C.blue, },
		TSSymbol = {fg = C.blue, },
		TSText = {fg = C.fg, },
		TSTextReference = {fg = C.red, },
		TSPunctDelimiter = {fg = C.fg, },
		TSTagDelimiter = {fg = C.gray, },
		TSTagAttribute = {fg = C.red, },
		TSPunctBracket = {fg = C.fg, },
		TSPunctSpecial = {fg = C.fg, },
		TSString = {fg = C.green, },
		TSStringRegex = {fg = C.orange, },
		TSStringEscape = {fg = C.orange, },
		TSTag = {fg = C.blue, },
		TSEmphasis = {style = "italic", },
		TSUnderline = {style = "underline", },
		TSWarning = {fg = C.warning_orange, },
		TSDanger = {fg = C.error_red, },
		TSTitle = {fg = C.blue, style = "bold", },
		TSLiteral = {fg = C.green, },
		TSURI = {fg = C.blue, style = "underline", },
		TSMath = {fg = C.fg, },
		TSKeywordOperator = {fg = C.purple, },
		TSStructure = {fg = C.fg, },
		TSStrong = {fg = C.yellow_orange, },
		TSQueryLinterError = {fg = C.warning_orange, },
		TSEnvironment = {fg = C.fg, },
		TSEnvironmentName = {fg = C.fg, },
		TSNote = {fg = C.blue, },
}

return Treesitter