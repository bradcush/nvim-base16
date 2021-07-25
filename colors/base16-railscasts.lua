-- bradcush/base16-nvim (https://github.com/bradcush/base16-nvim)
-- by Bradley Cushing (https://github.com/bradcush)
-- Railscasts scheme by Ryan Bates (http://railscasts.com)

-- Based on existing work with references below
-- base16-vim (https://github.com/chriskempson/base16-vim)
-- by Chris Kempson (http://chriskempson.com)
-- RRethy/nvim-base16 (https://github.com/RRethy/nvim-base16)
-- by Adam P. Regasz-Rethy (https://github.com/RRethy)

-- Base16 color variables
local base00 = "#2b2b2b"
local base01 = "#272935"
local base02 = "#3a4055"
local base03 = "#5a647e"
local base04 = "#d4cfc9"
local base05 = "#e6e1dc"
local base06 = "#f4f1ed"
local base07 = "#f9f7f3"
local base08 = "#da4939"
local base09 = "#cc7833"
local base0A = "#ffc66d"
local base0B = "#a5c261"
local base0C = "#519f50"
local base0D = "#6d9cbe"
local base0E = "#b6b3eb"
local base0F = "#bc9458"

-- Setting highlighting and syntax
vim.cmd('highlight clear')
vim.cmd('syntax reset')
vim.g.colors_name = "base16-railscasts"

-- Highlighting for indiividual groups
local hi = setmetatable({}, {
    __newindex = function(_, hlgroup, args)
        local guifg, guibg, gui, guisp = args.guifg, args.guibg, args.gui,
                                         args.guisp
        local cmd = {'hi', hlgroup}
        if guifg then table.insert(cmd, 'guifg=' .. guifg) end
        if guibg then table.insert(cmd, 'guibg=' .. guibg) end
        if gui then table.insert(cmd, 'gui=' .. gui) end
        if guisp then table.insert(cmd, 'guisp=' .. guisp) end
        vim.cmd(table.concat(cmd, ' '))
    end
})

-- Vim editor
hi.Normal = {guifg = base05, guibg = base00, gui = nil, guisp = nil}
hi.Bold = {guifg = nil, guibg = nil, gui = 'bold', guisp = nil}
hi.Debug = {guifg = base08, guibg = nil, gui = nil, guisp = nil}
hi.Directory = {guifg = base0D, guibg = nil, gui = nil, guisp = nil}
hi.Error = {guifg = base00, guibg = base08, gui = nil, guisp = nil}
hi.ErrorMsg = {guifg = base08, guibg = base00, gui = nil, guisp = nil}
hi.Exception = {guifg = base08, guibg = nil, gui = nil, guisp = nil}
hi.FoldColumn = {guifg = base0C, guibg = base01, gui = nil, guisp = nil}
hi.Folded = {guifg = base03, guibg = base01, gui = nil, guisp = nil}
hi.IncSearch = {guifg = base01, guibg = base09, gui = 'none', guisp = nil}
hi.Italic = {guifg = nil, guibg = nil, gui = 'none', guisp = nil}
hi.Macro = {guifg = base08, guibg = nil, gui = nil, guisp = nil}
hi.MatchParen = {guifg = nil, guibg = base03, gui = nil, guisp = nil}
hi.ModeMsg = {guifg = base0B, guibg = nil, gui = nil, guisp = nil}
hi.MoreMsg = {guifg = base0B, guibg = nil, gui = nil, guisp = nil}
hi.Question = {guifg = base0D, guibg = nil, gui = nil, guisp = nil}
hi.Search = {guifg = base01, guibg = base0A, gui = nil, guisp = nil}
hi.Substitute = {guifg = base01, guibg = base0A, gui = 'none', guisp = nil}
hi.SpecialKey = {guifg = base03, guibg = nil, gui = nil, guisp = nil}
hi.TooLong = {guifg = base08, guibg = nil, gui = nil, guisp = nil}
hi.Underlined = {guifg = base08, guibg = nil, gui = nil, guisp = nil}
hi.Visual = {guifg = nil, guibg = base02, gui = nil, guisp = nil}
hi.VisualNOS = {guifg = base08, guibg = nil, gui = nil, guisp = nil}
hi.WarningMsg = {guifg = base08, guibg = nil, gui = nil, guisp = nil}
hi.WildMenu = {guifg = base08, guibg = base0A, gui = nil, guisp = nil}
hi.Title = {guifg = base0D, guibg = nil, gui = 'none', guisp = nil}
hi.Conceal = {guifg = base0D, guibg = base00, gui = nil, guisp = nil}
hi.Cursor = {guifg = base00, guibg = base05, gui = nil, guisp = nil}
hi.NonText = {guifg = base03, guibg = nil, gui = nil, guisp = nil}
hi.LineNr = {guifg = base03, guibg = base01, gui = nil, guisp = nil}
hi.SignColumn = {guifg = base03, guibg = base01, gui = nil, guisp = nil}
hi.StatusLine = {guifg = base04, guibg = base02, gui = 'none', guisp = nil}
hi.StatusLineNC = {guifg = base03, guibg = base01, gui = 'none', guisp = nil}
hi.VertSplit = {guifg = base02, guibg = base02, gui = 'none', guisp = nil}
hi.ColorColumn = {guifg = nil, guibg = base01, gui = 'none', guisp = nil}
hi.CursorColumn = {guifg = nil, guibg = base01, gui = 'none', guisp = nil}
hi.CursorLine = {guifg = nil, guibg = base01, gui = 'none', guisp = nil}
hi.CursorLineNr = {guifg = base04, guibg = base01, gui = nil, guisp = nil}
hi.QuickFixLine = {guifg = nil, guibg = base01, gui = 'none', guisp = nil}
hi.PMenu = {guifg = base05, guibg = base01, gui = 'none', guisp = nil}
hi.PMenuSel = {guifg = base01, guibg = base05, gui = nil, guisp = nil}
hi.TabLine = {guifg = base03, guibg = base01, gui = 'none', guisp = nil}
hi.TabLineFill = {guifg = base03, guibg = base01, gui = 'none', guisp = nil}
hi.TabLineSel = {guifg = base0B, guibg = base01, gui = 'none', guisp = nil}

-- Standard syntax
hi.Boolean = {guifg = base09, guibg = nil, gui = nil, guisp = nil}
hi.Character = {guifg = base08, guibg = nil, gui = nil, guisp = nil}
hi.Comment = {guifg = base03, guibg = nil, gui = nil, guisp = nil}
hi.Conditional = {guifg = base0E, guibg = nil, gui = nil, guisp = nil}
hi.Constant = {guifg = base09, guibg = nil, gui = nil, guisp = nil}
hi.Define = {guifg = base0E, guibg = nil, gui = 'none', guisp = nil}
hi.Delimiter = {guifg = base0F, guibg = nil, gui = nil, guisp = nil}
hi.Float = {guifg = base09, guibg = nil, gui = nil, guisp = nil}
hi.Function = {guifg = base0D, guibg = nil, gui = nil, guisp = nil}
hi.Identifier = {guifg = base08, guibg = nil, gui = 'none', guisp = nil}
hi.Include = {guifg = base0D, guibg = nil, gui = nil, guisp = nil}
hi.Keyword = {guifg = base0E, guibg = nil, gui = nil, guisp = nil}
hi.Label = {guifg = base0A, guibg = nil, gui = nil, guisp = nil}
hi.Number = {guifg = base09, guibg = nil, gui = nil, guisp = nil}
hi.Operator = {guifg = base05, guibg = nil, gui = 'none', guisp = nil}
hi.PreProc = {guifg = base0A, guibg = nil, gui = nil, guisp = nil}
hi.Repeat = {guifg = base0A, guibg = nil, gui = nil, guisp = nil}
hi.Special = {guifg = base0C, guibg = nil, gui = nil, guisp = nil}
hi.SpecialChar = {guifg = base0F, guibg = nil, gui = nil, guisp = nil}
hi.Statement = {guifg = base08, guibg = nil, gui = nil, guisp = nil}
hi.StorageClass = {guifg = base0A, guibg = nil, gui = nil, guisp = nil}
hi.String = {guifg = base0B, guibg = nil, gui = nil, guisp = nil}
hi.Structure = {guifg = base0E, guibg = nil, gui = nil, guisp = nil}
hi.Tag = {guifg = base0A, guibg = nil, gui = nil, guisp = nil}
hi.Todo = {guifg = base0A, guibg = base01, gui = nil, guisp = nil}
hi.Type = {guifg = base0A, guibg = nil, gui = 'none', guisp = nil}
hi.Typedef = {guifg = base0A, guibg = nil, gui = nil, guisp = nil}

-- Diffing
hi.DiffAdd = {guifg = base0B, guibg = base01, gui = nil, guisp = nil}
hi.DiffChange = {guifg = base03, guibg = base01, gui = nil, guisp = nil}
hi.DiffDelete = {guifg = base08, guibg = base01, gui = nil, guisp = nil}
hi.DiffText = {guifg = base0D, guibg = base01, gui = nil, guisp = nil}
hi.DiffAdded = {guifg = base0B, guibg = base01, gui = nil, guisp = nil}
hi.DiffFile = {guifg = base08, guibg = base00, gui = nil, guisp = nil}
hi.DiffNewFile = {guifg = base0B, guibg = base00, gui = nil, guisp = nil}
hi.DiffLine = {guifg = base0D, guibg = base00, gui = nil, guisp = nil}
hi.DiffRemoved = {guifg = base08, guibg = base00, gui = nil, guisp = nil}

-- Git
hi.gitcommitOverflow = {guifg = base08, guibg = nil, gui = nil, guisp = nil}
hi.gitcommitSummary = {guifg = base0B, guibg = nil, gui = nil, guisp = nil}
hi.gitcommitComment = {guifg = base03, guibg = nil, gui = nil, guisp = nil}
hi.gitcommitUntracked = {guifg = base03, guibg = nil, gui = nil, guisp = nil}
hi.gitcommitDiscarded = {guifg = base03, guibg = nil, gui = nil, guisp = nil}
hi.gitcommitSelected = {guifg = base03, guibg = nil, gui = nil, guisp = nil}
hi.gitcommitHeader = {guifg = base0E, guibg = nil, gui = nil, guisp = nil}
hi.gitcommitSelectedType = {guifg = base0D, guibg = nil, gui = nil, guisp = nil}
hi.gitcommitUnmergedType = {guifg = base0D, guibg = nil, gui = nil, guisp = nil}
hi.gitcommitDiscardedType = {guifg = base0D, guibg = nil, gui = nil, guisp = nil}
hi.gitcommitBranch = {guifg = base09, guibg = nil, gui = 'bold', guisp = nil}
hi.gitcommitUntrackedFile = {guifg = base0A, guibg = nil, gui = nil, guisp = nil}
hi.gitcommitUnmergedFile = {guifg = base08, guibg = nil, gui = 'bold', guisp = nil}
hi.gitcommitDiscardedFile = {guifg = base08, guibg = nil, gui = 'bold', guisp = nil}
hi.gitcommitSelectedFile = {guifg = base0B, guibg = nil, gui = 'bold', guisp = nil}

-- Spelling highlighting
hi.SpellBad = {guifg = nil, guibg = nil, gui = 'undercurl', guisp = base08}
hi.SpellLocal = {guifg = nil, guibg = nil, gui = 'undercurl', guisp = base0C}
hi.SpellCap = {guifg = nil, guibg = nil, gui = 'undercurl', guisp = base0D}
hi.SpellRare = {guifg = nil, guibg = nil, gui = 'undercurl', guisp = base0E}

-- Neovim general
hi.NvimInternalError = {guifg = base00, guibg = base08, gui = 'none', guisp = nil}
hi.NormalFloat = {guifg = base05, guibg = base00, gui = nil, guisp = nil}
hi.FloatBorder = {guifg = base05, guibg = base00, gui = nil, guisp = nil}
hi.NormalNC = {guifg = base05, guibg = base00, gui = nil, guisp = nil}
hi.TermCursor = {guifg = base00, guibg = base05, gui = 'none', guisp = nil}
hi.TermCursorNC = {guifg = base00, guibg = base05, gui = nil, guisp = nil}

-- Statusline and ruler
hi.User1 = {guifg = base08, guibg = base02, gui = 'none', guisp = nil}
hi.User2 = {guifg = base0E, guibg = base02, gui = 'none', guisp = nil}
hi.User3 = {guifg = base05, guibg = base02, gui = 'none', guisp = nil}
hi.User4 = {guifg = base0C, guibg = base02, gui = 'none', guisp = nil}
hi.User5 = {guifg = base01, guibg = base02, gui = 'none', guisp = nil}
hi.User6 = {guifg = base05, guibg = base02, gui = 'none', guisp = nil}
hi.User7 = {guifg = base05, guibg = base02, gui = 'none', guisp = nil}
hi.User8 = {guifg = base00, guibg = base02, gui = 'none', guisp = nil}
hi.User9 = {guifg = base00, guibg = base02, gui = 'none', guisp = nil}

-- Built-in terminal
vim.g.terminal_color_0 = base00
vim.g.terminal_color_1 = base08
vim.g.terminal_color_2 = base0B
vim.g.terminal_color_3 = base0A
vim.g.terminal_color_4 = base0D
vim.g.terminal_color_5 = base0E
vim.g.terminal_color_6 = base0C
vim.g.terminal_color_7 = base05
vim.g.terminal_color_8 = base03
vim.g.terminal_color_9 = base08
vim.g.terminal_color_10 = base0B
vim.g.terminal_color_11 = base0A
vim.g.terminal_color_12 = base0D
vim.g.terminal_color_13 = base0E
vim.g.terminal_color_14 = base0C
vim.g.terminal_color_15 = base07

-- Built-in LSP
hi.LspReferenceText = {guifg = nil, guibg = nil, gui = 'underline', guisp = base04}
hi.LspReferenceRead = {guifg = nil, guibg = nil, gui = 'underline', guisp = base04}
hi.LspReferenceWrite = {guifg = nil, guibg = nil, gui = 'underline', guisp = base04}
hi.LspDiagnosticsDefaultError = {guifg = base08, guibg = nil, gui = 'none', guisp = nil}
hi.LspDiagnosticsDefaultWarning = {guifg = base0A, guibg = nil, gui = 'none', guisp = nil}
hi.LspDiagnosticsDefaultInformation = {guifg = base0D, guibg = nil, gui = 'none', guisp = nil}
hi.LspDiagnosticsDefaultHint = {guifg = base05, guibg = nil, gui = 'none', guisp = nil}
hi.LspDiagnosticsUnderlineError = {guifg = nil, guibg = nil, gui = 'undercurl', guisp = base08}
hi.LspDiagnosticsUnderlineWarning = {guifg = nil, guibg = nil, gui = 'undercurl', guisp = base0A}
hi.LspDiagnosticsUnderlineInformation = {guifg = nil, guibg = nil, gui = 'undercurl', guisp = base0D}
hi.LspDiagnosticsUnderlineHint = {guifg = nil, guibg = nil, gui = 'undercurl', guisp = base05}

-- Treesitter syntax
hi.TSAnnotation = {guifg = base0F, guibg = nil, gui = 'none', guisp = nil}
hi.TSAttribute = {guifg = base0A, guibg = nil, gui = 'none', guisp = nil}
hi.TSBoolean = {guifg = base09, guibg = nil, gui = 'none', guisp = nil}
hi.TSCharacter = {guifg = base08, guibg = nil, gui = 'none', guisp = nil}
hi.TSComment = {guifg = base03, guibg = nil, gui = 'italic', guisp = nil}
hi.TSConstructor = {guifg = base0C, guibg = nil, gui = 'none', guisp = nil}
hi.TSConditional = {guifg = base0E, guibg = nil, gui = 'none', guisp = nil}
hi.TSConstant = {guifg = base09, guibg = nil, gui = 'none', guisp = nil}
hi.TSConstBuiltin = {guifg = base09, guibg = nil, gui = 'none', guisp = nil}
hi.TSConstMacro = {guifg = base09, guibg = nil, gui = 'none', guisp = nil}
hi.TSError = {guifg = base08, guibg = nil, gui = 'none', guisp = nil}
hi.TSException = {guifg = base08, guibg = nil, gui = 'none', guisp = nil}
hi.TSField = {guifg = base08, guibg = nil, gui = 'none', guisp = nil}
hi.TSFloat = {guifg = base09, guibg = nil, gui = 'none', guisp = nil}
hi.TSFunction = {guifg = base0D, guibg = nil, gui = 'none', guisp = nil}
hi.TSFuncBuiltin = {guifg = base09, guibg = nil, gui = 'none', guisp = nil}
hi.TSFuncMacro = {guifg = base0D, guibg = nil, gui = 'none', guisp = nil}
hi.TSInclude = {guifg = base0D, guibg = nil, gui = 'none', guisp = nil}
hi.TSKeyword = {guifg = base0E, guibg = nil, gui = 'none', guisp = nil}
hi.TSKeywordFunction = {guifg = base0E, guibg = nil, gui = 'none', guisp = nil}
hi.TSKeywordOperator = {guifg = base0E, guibg = nil, gui = 'none', guisp = nil}
hi.TSLabel = {guifg = base0A, guibg = nil, gui = 'none', guisp = nil}
hi.TSMethod = {guifg = base0D, guibg = nil, gui = 'none', guisp = nil}
hi.TSNamespace = {guifg = base0C, guibg = nil, gui = 'none', guisp = nil}
hi.TSNone = {guifg = nil, guibg = nil, gui = 'none', guisp = nil}
hi.TSNumber = {guifg = base09, guibg = nil, gui = 'none', guisp = nil}
hi.TSOperator = {guifg = base05, guibg = nil, gui = 'none', guisp = nil}
hi.TSParameter = {guifg = base0A, guibg = nil, gui = 'none', guisp = nil}
hi.TSParameterReference = {guifg = base0A, guibg = nil, gui = 'none', guisp = nil}
hi.TSProperty = {guifg = base0D, guibg = nil, gui = 'none', guisp = nil}
hi.TSPunctDelimiter = {guifg = base0F, guibg = nil, gui = 'none', guisp = nil}
hi.TSPunctBracket = {guifg = base05, guibg = nil, gui = 'none', guisp = nil}
hi.TSPunctSpecial = {guifg = base0A, guibg = nil, gui = 'none', guisp = nil}
hi.TSRepeat = {guifg = base0A, guibg = nil, gui = 'none', guisp = nil}
hi.TSString = {guifg = base0B, guibg = nil, gui = 'none', guisp = nil}
hi.TSStringRegex = {guifg = base0B, guibg = nil, gui = 'none', guisp = nil}
hi.TSStringEscape = {guifg = base0B, guibg = nil, gui = 'none', guisp = nil}
hi.TSSymbol = {guifg = base0B, guibg = nil, gui = 'none', guisp = nil}
hi.TSTag = {guifg = base0A, guibg = nil, gui = 'none', guisp = nil}
hi.TSTagDelimiter = {guifg = base0F, guibg = nil, gui = 'none', guisp = nil}
hi.TSText = {guifg = base05, guibg = nil, gui = 'none', guisp = nil}
hi.TSStrong = {guifg = nil, guibg = nil, gui = 'bold', guisp = nil}
hi.TSEmphasis = {guifg = nil, guibg = nil, gui = 'italic', guisp = nil}
hi.TSUnderline = {guifg = nil, guibg = nil, gui = 'underline', guisp = nil}
hi.TSStrike = {guifg = nil, guibg = nil, gui = 'strikethrough', guisp = nil}
hi.TSTitle = {guifg = nil, guibg = nil, gui = 'none', guisp = nil}
hi.TSLiteral = {guifg = nil, guibg = nil, gui = 'none', guisp = nil}
hi.TSURI = {guifg = nil, guibg = nil, gui = 'underline', guisp = nil}
hi.TSType = {guifg = base0A, guibg = nil, gui = 'none', guisp = nil}
hi.TSTypeBuiltin = {guifg = base09, guibg = nil, gui = 'none', guisp = nil}
hi.TSVariable = {guifg = base05, guibg = nil, gui = 'none', guisp = nil}
hi.TSVariableBuiltin = {guifg = base09, guibg = nil, gui = 'none', guisp = nil}
