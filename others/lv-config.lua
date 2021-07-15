--[[
O is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general

O.format_on_save = true
O.completion.autocomplete = true
-- O.colorscheme = "spacegray"
-- O.auto_close_tree = 0
-- O.default_options.wrap = true
O.default_options.timeoutlen = 100
O.leader_key = " "

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
O.plugin.dashboard.active = true
O.plugin.terminal.active = true
O.plugin.zen.active = false
O.plugin.zen.window.height = 0.90

-- if you don't want all the parsers change this to a table of the ones you want
O.treesitter.ensure_installed = "maintained"
O.treesitter.ignore_install = { "haskell" }
O.treesitter.highlight.enabled = true

-- python
-- O.lang.python.linter = 'flake8'
O.lang.python.isort = true
O.lang.python.diagnostics.virtual_text = true
O.lang.python.analysis.use_library_code_types = true
-- to change default formatter from yapf to black
O.lang.python.formatter.exe = "black"
O.lang.python.formatter.args = { "-" }

-- go
-- to change default formatter from gofmt to goimports
-- O.lang.formatter.go.exe = "goimports"

-- javascript
O.lang.tsserver.linter = nil

-- rust
-- O.lang.rust.formatter = {
--   exe = "rustfmt",
--   args = {"--emit=stdout", "--edition=2018"},
-- }

--LaTeX
-- Options: https://github.com/latex-lsp/texlab/blob/master/docs/options.md
O.lang.latex.active = true
O.lang.latex.aux_directory = "."
O.lang.latex.bibtex_formatter = "texlab"
O.lang.latex.build.args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" }
O.lang.latex.build.executable = "latexmk"
O.lang.latex.build.forward_search_after = false
O.lang.latex.build.on_save = false
O.lang.latex.chktex.on_edit = false
O.lang.latex.chktex.on_open_and_save = false
O.lang.latex.diagnostics_delay = 300
O.lang.latex.formatter_line_length = 80
O.lang.latex.forward_search.executable = "zathura"
O.lang.latex.latex_formatter = "latexindent"
O.lang.latex.latexindent.modify_line_breaks = false
-- O.lang.latex.auto_save = false
-- O.lang.latex.ignore_errors = { }

-- Additional Plugins
-- O.user_plugins = {
--     {"folke/tokyonight.nvim"}, {
--         "ray-x/lsp_signature.nvim",
--         config = function() require"lsp_signature".on_attach() end,
--         event = "InsertEnter"
--     }
-- }

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- O.user_autocommands = {{ "BufWinEnter", "*", "echo \"hi again\""}}

-- Additional Leader bindings for WhichKey
-- O.user_which_key = {
--   A = {
--     name = "+Custom Leader Keys",
--     a = { "<cmd>echo 'first custom command'<cr>", "Description for a" },
--     b = { "<cmd>echo 'second custom command'<cr>", "Description for b" },
--   },
-- }

--qvieth============================================================================================================================================

O.user_plugins = {
	-- THEMES
	"folke/tokyonight.nvim",
	"marko-cerovac/material.nvim",
	-- ESSENTIALS,
	{
		"tzachar/compe-tabnine",
		run = "./install.sh",
		requires = "hrsh7th/nvim-compe",
		after = "nvim-compe",
	},
	"simrat39/symbols-outline.nvim",
	"kevinhwang91/rnvimr",
	"tpope/vim-surround",
	-- CODING,
	-- { "prettier/vim-prettier", run = "yarn install" },
	"mattn/emmet-vim",
	"honza/vim-snippets",
	"lukas-reineke/indent-blankline.nvim",
	{ "dsznajder/vscode-es7-javascript-react-snippets", run = "yarn install --frozen-lockfile && yarn compile" },
	{ "turbio/bracey.vim", run = "npm install --prefix server" },
	-- MARKDOWN EDITING,
	"vimwiki/vimwiki",
	{ "iamcco/markdown-preview.nvim", run = "cd app && yarn install" },
	"mzlogin/vim-markdown-toc",
	"dpelle/vim-LanguageTool",
}

--============================================================================================================================================
--LV
O.plugin.dashboard.custom_header = {
	"     ▄▄▄▄▄███████████████████▄▄▄▄▄         ",
	"   ▄██████████▀▀▀▀▀▀▀▀▀▀██████▀████▄       ",
	"  █▀████████▄             ▀▀████ ▀██▄      ",
	" █▄▄██████████████████▄▄▄         ▄██▀     ",
	"  ▀█████████████████████████▄    ▄██▀      ",
	"    ▀████▀▀▀▀▀▀▀▀▀▀▀▀█████████▄▄██▀        ",
	"      ▀███▄              ▀██████▀          ",
	"        ▀██████▄        ▄████▀             ",
	"           ▀█████▄▄▄▄▄▄▄███▀               ",
	"             ▀████▀▀▀████▀                 ",
	"               ▀███▄███▀                   ",
	"                  ▀█▀                      ",
}
O.colorscheme = "material"
O.completion.source.tabnine = true -- <<< tabnine
O.default_options.cmdheight = 1

--MAPPINGS
local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

--Double Esc
map("t", "<Esc><Esc>", [[<C-\><C-n>]], opt)

--ToggleTerm
map("n", "<F2>", [[<CMD>ToggleTerm<CR>]], opt)
map("t", "<F2>", [[<C-\><C-n><CMD>ToggleTerm<CR>]], opt)

--Rnvimr
map("n", "<F3>", [[<CMD>RnvimrToggle<CR>]], opt)
map("t", "<F3>", [[<C-\><C-n><CMD>RnvimrToggle<CR>]], opt)

--=============================================================================================================================================
--==== OPTIONS & VARIABLES ====
--o - global options          =
--wo - window options         =
--bo - buffer options         =
--g - global variables        =
--b - buffer variables        =
--=============================

vim.g.material_style = "darker" -- deep ocean, oceanic, palenight, lighter, darker
vim.g.tokyonight_style = "storm" -- storm, day, night

-- indent-blankline.nvim
vim.g.indent_blankline_char_list = { "┊", "│", "¦" }

--vimwiki
vim.g.vimwiki_toc_header_level = 2
vim.g.vimwiki_list = {
	{
		path = "~/mynote",
		template_path = "~/vimwiki/templates/",
		template_default = "default",
		syntax = "markdown",
		ext = ".md",
		path_html = "~/mynote_site_html/",
		custom_wiki2html = "vimwiki_markdown",
		template_ext = ".tpl",
	},
	{ path = "~/mynote2/" },
	{ path = "~/mytest/" },
}

--ADD TITLECASE FUNCTION
vim.cmd([[
function! TwiddleCase(str)
  if a:str ==# toupper(a:str)
    let result = tolower(a:str)
  elseif a:str ==# tolower(a:str)
    let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
  else
    let result = toupper(a:str)
  endif
  return result
endfunction
vnoremap <S-u> y:call setreg('', TwiddleCase(@"), getregtype(''))<CR>gv""Pgv
]])
