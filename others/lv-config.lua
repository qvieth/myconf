--[[
O is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
-- general
O.format_on_save = false
O.colorscheme = "material"
O.auto_close_tree = 1
O.leader_key = "\\"
O.hl_search = true

-- TODO User Config for predefined plugins
O.plugin.dashboard.active = true
O.plugin.colorizer.active = true
-- O.plugin.zen.active = true
-- O.plugin.ts_playground.active = true
O.plugin.ts_context_commentstring.active = true
-- O.plugin.ts_hintobjects.active = true
O.plugin.ts_autotag.active = true
O.plugin.ts_rainbow.active = true
-- O.plugin.ts_textobjects.active = true
-- O.plugin.ts_textsubjects.active = true
-- O.plugin.telescope_fzy.active = true
-- O.plugin.telescope_project.active = true
O.plugin.indent_line.active = true
O.plugin.symbol_outline.active = true
-- O.plugin.debug.active = true
-- O.plugin.dap_install.active = true
O.plugin.lush.active = true
-- O.plugin.diffview.active = true
O.plugin.floatterm.active = true
-- O.plugin.trouble.active = true
-- O.plugin.sanegx.active = true

-- dashboard
O.dashboard.custom_header = {
	"                                   ",
	"                                   ",
	"                                   ",
	"   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
	"    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
	"          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
	"           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
	"          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
	"   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
	"  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
	" ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
	" ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
	"    ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆       ",
	"       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
	"                                   ",
}
-- O.dashboard.footer = {""}

-- if you don't want all the parsers change this to a table of the ones you want
O.treesitter.ensure_installed = "all"
O.treesitter.ignore_install = { "haskell" }
O.treesitter.highlight.enabled = true

-- python
-- O.python.linter = 'flake8'
O.lang.python.isort = true
O.lang.python.diagnostics.virtual_text = true
O.lang.python.analysis.use_library_code_types = true

-- javascript
O.lang.tsserver.linter = nil

-- Additional Plugins
O.user_plugins = {
	-- THEMES,
	{ "npxbr/gruvbox.nvim", requires = "rktjmp/lush.nvim" },
	"marko-cerovac/material.nvim",
	"navarasu/onedark.nvim",
	-- ESSENTIALS,
  'kevinhwang91/rnvimr',
	"tpope/vim-surround",
	{ "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim" },
	-- CODING,
	"mattn/emmet-vim",
	"honza/vim-snippets",
	{ "dsznajder/vscode-es7-javascript-react-snippets", run = "yarn install --frozen-lockfile && yarn compile" },
	{ "turbio/bracey.vim", run = "npm install --prefix server" },
	-- MARKDOWN EDITING,
	"vimwiki/vimwiki",
	{ "iamcco/markdown-preview.nvim", run = "cd app && yarn install" },
	"mzlogin/vim-markdown-toc",
	"dpelle/vim-LanguageTool",
}
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
--==================================================================================================================================================================================== ============================================= =============================================
-- MAPPINGS

-- FTerm.nvim & rnvimr
vim.api.nvim_set_keymap('n', '<F2>', [[<CMD>lua require("FTerm").toggle()<CR>]],{ noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<F2>', [[<C-\><C-n><CMD>lua require("FTerm").toggle()<CR>]],{ noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F3>", [[<CMD>RnvimrToggle<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<F3>", [[<C-\><C-n><CMD>RnvimrToggle<CR>]], { noremap = true, silent = true })

-- Material colorscheme toggle
vim.api.nvim_set_keymap(
	"n",
	"<Leader>ma",
	[[:lua require('material.functions').toggle_style()<CR>]],
	{ noremap = true, silent = true }
)

--==================================================================================================================================================================================== ============================================= =============================================
-- OPTIONS

-- ========== OPTIONS ==========
-- o - global options          =
-- wo - window options         =
-- bo - buffer options         =
-- ========== VARIABLES ========
-- g - global variables        =
-- b - buffer variables        =
-- =============================

vim.g.material_style = [[darker]]
vim.g.onedark_style = [[warm]]
vim.cmd([[colorscheme material]])

-- vimwiki
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

-- floaterm
vim.g.floaterm_width = 0.6
vim.g.floaterm_height = 0.7
vim.g.floaterm_position = "topright"
vim.g.floaterm_title = "nvim: $1/$2"
vim.cmd("hi FloatermBorder guibg=none guifg=none")
vim.cmd("hi Floaterm guibg=none guifg=none")

-- ADD TITLECASE FUNCTION
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

-- neogit
local neogit = require("neogit")
neogit.setup({})
