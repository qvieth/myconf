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
O.lint_on_save = true
O.completion.autocomplete = true
O.colorscheme = "spacegray"
O.default_options.wrap = false
O.default_options.timeoutlen = 100
O.leader_key = " "

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
O.plugin.dashboard.active = true
O.plugin.terminal.active = true
O.plugin.zen.active = true
O.plugin.zen.window.height = 0.90
O.plugin.nvimtree.side = "left"
O.plugin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
O.treesitter.ensure_installed = "maintained"
O.treesitter.ignore_install = { "haskell" }
O.treesitter.highlight.enabled = true

-- python
O.lang.python.diagnostics.virtual_text = true
O.lang.python.analysis.use_library_code_types = true
-- To change default formatter from yapf to black
O.lang.python.formatter.exe = "black"
O.lang.python.formatter.args = { "-" }
-- To change enabled linters
-- https://github.com/mfussenegger/nvim-lint#available-linters
O.lang.python.linters = { "flake8", "pylint", "mypy", ... }

-- go
-- To change default formatter from gofmt to goimports
-- O.lang.formatter.go.exe = "goimports"

-- javascript
O.lang.tsserver.linter = nil

-- rust
-- O.lang.rust.rust_tools = true
-- O.lang.rust.formatter = {
--   exe = "rustfmt",
--   args = {"--emit=stdout", "--edition=2018"},
-- }

-- scala
-- O.lang.scala.metals.active = true
-- O.lang.scala.metals.server_version = "0.10.5",

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

--QVIETH============================================================================================================================================

-- Additional Plugins
local fe = {
	"html",
	"javascript",
	"javascriptreact",
	"javascript.jsx",
	"typescript",
	"typescriptreact",
	"typescript.tsx",
}
O.user_plugins = {
	-- ==============================THEMES
	{
		"marko-cerovac/material.nvim",
		config = function()
			vim.g.material_style = "darker" -- deep ocean, oceanic, palenight, lighter, darker
			vim.g.material_lighter_contrast = true
			vim.g.material_variable_color = "#FFDEAD"
			vim.g.material_borders = true
			require("material").set()
		end,
	},

	{ "pbrisbin/vim-colors-off", opt = true },
	{ "pgdouyon/vim-yin-yang", opt = true },
	{ "cideM/yui", opt = true },

	-- ==============================ESSENTIALS,
	{
		"tzachar/compe-tabnine",
		run = "./install.sh",
		requires = "hrsh7th/nvim-compe",
		after = "nvim-compe",
	},
	{ "kevinhwang91/rnvimr", event = "BufWinEnter" },
	-- ==============================CODING,
	{ "simrat39/symbols-outline.nvim", cmd = "SymbolsOutline" },
	{ "tpope/vim-surround", event = "BufRead" },
	{ "tpope/vim-commentary", event = "BufRead" },
	"JoosepAlviste/nvim-ts-context-commentstring",
	{
		"windwp/nvim-ts-autotag",
		ft = fe,
	},
	"p00f/nvim-ts-rainbow",
	{
		"mattn/emmet-vim",
		event = "InsertEnter",
		ft = fe,
	},
	{ "michaelb/sniprun", run = "bash install.sh", cmd = "SnipRun" },
	{
		"lukas-reineke/indent-blankline.nvim",
		event = "BufRead",
		setup = function()
			vim.g.indent_blankline_enabled = true
			vim.g.indent_blankline_char_list = { "│", "│", "┆", "¦" }
			-- vim.g.indent_blankline_char_highlight_list = { "Constant", "Operator", "Function", "Label", "String" }
			vim.g.indent_blankline_show_trailing_blankline_indent = false
			vim.g.indent_blankline_filetype_exclude = { "help", "dashboard", "packer", "vimwiki" }
			vim.g.indent_blankline_buftype_exclude = { "terminal", "packer" }
			vim.g.indent_blankline_bufname_exclude = { "*.md", ".*.txt" }
		end,
	},
	{ "prettier/vim-prettier", run = "yarn install", ft = fe },
	{
		"SirVer/ultisnips",
		config = function()
			vim.g.UltiSnipsExpandTrigger = "<C-s>"
			vim.g.UltiSnipsJumpForwardTrigger = "<C-j>"
			vim.g.UltiSnipsJumpBackwardTrigger = "<C-k>"
		end,
	},
	"honza/vim-snippets",
	{
		"dsznajder/vscode-es7-javascript-react-snippets",
		run = "yarn install --frozen-lockfile && yarn compile",
		event = "InsertEnter",
		ft = fe,
	},
	{ "turbio/bracey.vim", run = "npm install --prefix server", cmd = "Bracey" },
	-- ==============================EDITING,
	{
		"vimwiki/vimwiki",
		config = function()
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
		end,
	},
	{ "jbyuki/venn.nvim", cmd = "VBox" },
	{ "iamcco/markdown-preview.nvim", run = "cd app && yarn install", ft = "markdown" },
	{ "mzlogin/vim-markdown-toc", ft = "markdown" },
}
-- Additional Leader bindings for WhichKey
O.user_which_key = {
	w = {
		name = "Vimwiki",
		w = { [[<Plug>VimwikiIndex]], "Vimwiki Wiki Index Page" },
		i = { [[<Plug>VimwikiDiaryIndex]], "Vimwiki Diary Index Page" },
		s = { [[<Plug>VimwikiUISelect]], "Vimwiki Index Select" },
	},
	v = {
		name = "VirtualEdit",
		a = { mode = "n", [[:set ve=all | set cursorcolumn<CR>]], "Virtualedit all" },
		d = { mode = "n", [[:set ve=""<CR>]], "Virtualedit default(off)" },
	},
	d = { mode = "v", [[:VBox<CR>]], "Draw" },
}
-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- O.user_autocommands = { { "BufWinEnter", "*", "pwd" } }

--============================================================================================================================================
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
-- O.colorscheme = "off"
O.default_options.cmdheight = 1
O.default_options.relativenumber = true
O.treesitter.rainbow.enable = true
O.treesitter.context_commentstring.enable = true
O.treesitter.autotag.enable = true
O.completion.source.tabnine = true -- <<< tabnine
O.completion.source.ultisnips = true
-- O.lang.emmet.active = true

--=============================================================================================================================================
--OPTIONS & VARIABLES | o - global options | wo - window options | bo - buffer options | g - global variables | b - buffer variables

--ADD TITLECASE FUNCTION AND VMAP TO U
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
vnoremap u y:call setreg('', TwiddleCase(@"), getregtype(''))<CR>gv""Pgv
]])

--============================================================================================================================================
--MAPPINGS

local map = vim.api.nvim_set_keymap

--DOUBLE ESC
map("t", "<Esc><Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

--NVIMTREE
map("n", "<F1>", [[<CMD>NvimTreeToggle<CR>]], { noremap = true, silent = true })
map("t", "<F1>", [[<C-\><C-n><CMD>NvimTreeToggle<CR>]], { noremap = true, silent = true })
map("i", "<F1>", [[<Esc><CMD>NvimTreeToggle<CR>]], { noremap = true, silent = true })

--TOGGLETERM
map("n", "<F2>", [[<CMD>ToggleTerm<CR>]], { noremap = true, silent = true })
map("i", "<F2>", [[<Esc><CMD>ToggleTerm<CR>]], { noremap = true, silent = true })
map("t", "<F2>", [[<C-\><C-n><CMD>ToggleTerm<CR>]], { noremap = true, silent = true })

--RNVIMR
map("n", "<F3>", [[<CMD>RnvimrToggle<CR>]], { noremap = true, silent = true })
map("i", "<F3>", [[<Esc><CMD>RnvimrToggle<CR>]], { noremap = true, silent = true })
map("t", "<F3>", [[<C-\><C-n><CMD>RnvimrToggle<CR>]], { noremap = true, silent = true })

--swap v and <C-v>
map("n", "v", [[<C-v>]], { noremap = true, silent = true })
map("n", "<C-v>", [[v]], { noremap = true, silent = true })
