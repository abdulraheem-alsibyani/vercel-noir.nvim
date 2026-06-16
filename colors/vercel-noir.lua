-- vercel-noir
-- pure black, vercel-inspired colorscheme
-- based on vercel-theme.nvim by ceigh (MIT)

vim.cmd("highlight clear")
if vim.g.syntax_on then
	vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.g.colors_name = "vercel-noir"

-- Palette ---------------------------------------------------------------------
local c = {
	bg = "#000000",
	bg_float = "#0a0a0a",
	bg_soft = "#111111",
	cursorline = "#16171c", -- current line
	sel = "#163853",
	border = "#272727",
	gutter = "#3f3f3f",
	linenr = "#565c66", -- line numbers
	linenr_cur = "#dfe1e6", -- current line number
	unused = "#6b7079", -- unused vars

	fg = "#fbfbfb",
	fg_dim = "#a1a1a1",
	comment = "#8f8f8f",
	white = "#ffffff",

	-- accents
	magenta = "#ff4fb0", -- keywords, operators
	green = "#4fe3a0", -- strings
	lavender = "#b06bff", -- functions
	blue = "#5ea8ff", -- variables, identifiers
	cyan = "#43e8cd",
	yellow = "#ffdc72",
	orange = "#ff9e64", -- numbers, constants, booleans
	red = "#ff5240",
}

local hl = function(g, o)
	vim.api.nvim_set_hl(0, g, o)
end

-- set vim.g.vercel_noir_transparent = true for a transparent background
local bg = vim.g.vercel_noir_transparent and "NONE" or c.bg

-- Editor UI -------------------------------------------------------------------
hl("Normal", { fg = c.fg, bg = bg })
hl("NormalNC", { fg = c.fg, bg = bg })
hl("NormalFloat", { fg = c.fg, bg = c.bg_float })
hl("FloatBorder", { fg = c.border, bg = c.bg_float })
hl("FloatTitle", { fg = c.lavender, bg = c.bg_float, bold = true })
hl("Cursor", { fg = c.bg, bg = c.fg })
hl("CursorLine", { bg = vim.g.vercel_noir_transparent and "NONE" or c.cursorline })
hl("CursorColumn", { bg = c.cursorline })
hl("ColorColumn", { bg = c.cursorline })
hl("CursorLineNr", { fg = c.linenr_cur, bold = true })
hl("LineNr", { fg = c.linenr })
hl("SignColumn", { fg = c.linenr, bg = bg })
hl("Visual", { bg = c.sel })
hl("Search", { fg = c.bg, bg = c.yellow })
hl("IncSearch", { fg = c.bg, bg = c.magenta })
hl("CurSearch", { fg = c.bg, bg = c.magenta })
hl("Pmenu", { fg = c.fg, bg = c.bg_soft })
hl("PmenuSel", { fg = c.white, bg = c.sel })
hl("PmenuSbar", { bg = c.bg_soft })
hl("PmenuThumb", { bg = c.border })
hl("StatusLine", { fg = c.fg_dim, bg = c.bg_soft })
hl("StatusLineNC", { fg = c.comment, bg = c.bg })
hl("TabLine", { fg = c.comment, bg = c.bg_soft })
hl("TabLineFill", { bg = c.bg })
hl("TabLineSel", { fg = c.fg, bg = c.bg })
hl("WinSeparator", { fg = c.border })
hl("VertSplit", { fg = c.border })
hl("Folded", { fg = c.comment, bg = c.bg_soft })
hl("FoldColumn", { fg = c.gutter, bg = c.bg })
hl("NonText", { fg = c.gutter })
hl("Whitespace", { fg = c.gutter })
hl("EndOfBuffer", { fg = c.bg })
hl("MatchParen", { fg = c.yellow, bold = true })
hl("Directory", { fg = c.blue })
hl("Title", { fg = c.lavender, bold = true })
hl("ErrorMsg", { fg = c.red })
hl("WarningMsg", { fg = c.yellow })
hl("ModeMsg", { fg = c.fg_dim })
hl("MoreMsg", { fg = c.green })
hl("Question", { fg = c.green })
hl("WildMenu", { fg = c.white, bg = c.sel })

-- Syntax (legacy fallback groups) ---------------------------------------------
hl("Comment", { fg = c.comment, italic = true })
hl("String", { fg = c.green })
hl("Character", { fg = c.green })
hl("Number", { fg = c.orange })
hl("Float", { fg = c.orange })
hl("Boolean", { fg = c.orange })
hl("Constant", { fg = c.orange })
hl("Identifier", { fg = c.blue })
hl("Function", { fg = c.lavender })
hl("Statement", { fg = c.magenta })
hl("Conditional", { fg = c.magenta })
hl("Repeat", { fg = c.magenta })
hl("Label", { fg = c.magenta })
hl("Operator", { fg = c.magenta })
hl("Keyword", { fg = c.magenta })
hl("Exception", { fg = c.magenta })
hl("PreProc", { fg = c.magenta })
hl("Include", { fg = c.magenta })
hl("Define", { fg = c.magenta })
hl("Macro", { fg = c.lavender })
hl("Type", { fg = c.white })
hl("StorageClass", { fg = c.magenta })
hl("Structure", { fg = c.white })
hl("Typedef", { fg = c.white })
hl("Special", { fg = c.cyan })
hl("SpecialChar", { fg = c.cyan })
hl("Delimiter", { fg = c.fg })
hl("Tag", { fg = c.blue })
hl("Underlined", { fg = c.blue, underline = true })
hl("Todo", { fg = c.bg, bg = c.yellow, bold = true })
hl("Error", { fg = c.red })

-- Treesitter ------------------------------------------------------------------
hl("@comment", { link = "Comment" })
hl("@string", { link = "String" })
hl("@string.escape", { fg = c.cyan })
hl("@character", { link = "Character" })
hl("@number", { link = "Number" })
hl("@boolean", { link = "Boolean" })
hl("@constant", { fg = c.orange })
hl("@constant.builtin", { fg = c.orange })
hl("@constant.macro", { fg = c.lavender })
hl("@variable", { fg = c.blue })
hl("@variable.builtin", { fg = c.blue })
hl("@variable.parameter", { fg = c.blue })
hl("@variable.member", { fg = c.fg })
hl("@property", { fg = c.fg })
hl("@field", { fg = c.fg })
hl("@function", { fg = c.lavender })
hl("@function.call", { fg = c.lavender })
hl("@function.method", { fg = c.lavender })
hl("@function.builtin", { fg = c.lavender })
hl("@constructor", { fg = c.lavender })
hl("@keyword", { fg = c.magenta })
hl("@keyword.function", { fg = c.magenta })
hl("@keyword.return", { fg = c.magenta })
hl("@keyword.operator", { fg = c.magenta })
hl("@conditional", { fg = c.magenta })
hl("@repeat", { fg = c.magenta })
hl("@operator", { fg = c.magenta })
hl("@exception", { fg = c.magenta })
hl("@type", { fg = c.white })
hl("@type.builtin", { fg = c.white })
hl("@namespace", { fg = c.blue })
hl("@module", { fg = c.blue })
hl("@parameter", { fg = c.blue })
hl("@punctuation.delimiter", { fg = c.fg_dim })
hl("@punctuation.bracket", { fg = c.fg })
hl("@punctuation.special", { fg = c.cyan })
hl("@tag", { fg = c.blue })
hl("@tag.attribute", { fg = c.lavender })
hl("@tag.delimiter", { fg = c.fg_dim })

-- LSP semantic tokens ---------------------------------------------------------
hl("@lsp.type.variable", { link = "@variable" })
hl("@lsp.type.parameter", { link = "@parameter" })
hl("@lsp.type.property", { link = "@property" })
hl("@lsp.type.function", { link = "@function" })
hl("@lsp.type.method", { link = "@function.method" })
hl("@lsp.type.keyword", { link = "@keyword" })
hl("@lsp.type.class", { link = "@type" })

-- Diagnostics -----------------------------------------------------------------
hl("DiagnosticError", { fg = c.red })
hl("DiagnosticWarn", { fg = c.yellow })
hl("DiagnosticInfo", { fg = c.blue })
hl("DiagnosticHint", { fg = c.cyan })
hl("DiagnosticUnderlineError", { undercurl = true, sp = c.red })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.yellow })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.blue })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.cyan })
hl("DiagnosticUnnecessary", { fg = c.unused })

-- Git -------------------------------------------------------------------------
hl("DiffAdd", { fg = c.green, bg = "#0c1f17" })
hl("DiffChange", { fg = c.yellow, bg = "#1c1a0e" })
hl("DiffDelete", { fg = c.red, bg = "#1f0e0c" })
hl("DiffText", { fg = c.fg, bg = "#27331f" })
hl("Added", { fg = c.green })
hl("Changed", { fg = c.yellow })
hl("Removed", { fg = c.red })
hl("GitSignsAdd", { fg = c.green })
hl("GitSignsChange", { fg = c.yellow })
hl("GitSignsDelete", { fg = c.red })

-- Telescope -------------------------------------------------------------------
hl("TelescopeNormal", { fg = c.fg, bg = c.bg_float })
hl("TelescopeBorder", { fg = c.border, bg = c.bg_float })
hl("TelescopePromptNormal", { fg = c.fg, bg = c.bg_soft })
hl("TelescopePromptBorder", { fg = c.bg_soft, bg = c.bg_soft })
hl("TelescopePromptTitle", { fg = c.bg, bg = c.magenta, bold = true })
hl("TelescopePreviewTitle", { fg = c.bg, bg = c.green, bold = true })
hl("TelescopeSelection", { bg = c.sel })
hl("TelescopeMatching", { fg = c.magenta, bold = true })

-- nvim-tree -------------------------------------------------------------------
hl("NvimTreeNormal", { fg = c.fg, bg = bg })
hl("NvimTreeFolderName", { fg = c.blue })
hl("NvimTreeFolderIcon", { fg = c.blue })
hl("NvimTreeRootFolder", { fg = c.lavender, bold = true })
hl("NvimTreeGitDirty", { fg = c.yellow })
hl("NvimTreeGitNew", { fg = c.green })
hl("NvimTreeGitDeleted", { fg = c.red })
hl("NvimTreeSpecialFile", { fg = c.magenta })
hl("NvimTreeIndentMarker", { fg = c.border })

-- nvim-cmp --------------------------------------------------------------------
hl("CmpItemAbbr", { fg = c.fg_dim })
hl("CmpItemAbbrMatch", { fg = c.magenta, bold = true })
hl("CmpItemKindFunction", { fg = c.lavender })
hl("CmpItemKindVariable", { fg = c.blue })
hl("CmpItemKindKeyword", { fg = c.magenta })
hl("CmpItemKindText", { fg = c.green })

-- Terminal colors -------------------------------------------------------------
vim.g.terminal_color_0 = c.bg
vim.g.terminal_color_1 = c.red
vim.g.terminal_color_2 = c.green
vim.g.terminal_color_3 = c.yellow
vim.g.terminal_color_4 = c.blue
vim.g.terminal_color_5 = c.magenta
vim.g.terminal_color_6 = c.cyan
vim.g.terminal_color_7 = c.fg
vim.g.terminal_color_8 = c.comment
vim.g.terminal_color_9 = c.red
vim.g.terminal_color_10 = c.green
vim.g.terminal_color_11 = c.yellow
vim.g.terminal_color_12 = c.blue
vim.g.terminal_color_13 = c.lavender
vim.g.terminal_color_14 = c.cyan
vim.g.terminal_color_15 = c.white
