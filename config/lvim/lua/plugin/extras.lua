-- EXTRA PLUGINS
lvim.plugins = {
	--COLORSCHEMES===================================================================================================
	"ChristianChiarulli/nvcode-color-schemes.vim",
	"pbrisbin/vim-colors-off",
	"pgdouyon/vim-yin-yang",
	"cideM/yui",
	-- "LunarVim/Colorschemes",
	--ESSENTIALS=====================================================================================================
	"arthurxavierx/vim-caser",
	{ "nacro90/numb.nvim", event = "BufRead", config = require("plugin.configs.numb") },
	{ "junegunn/vim-easy-align", config = require("plugin.configs.vim-easy-align") },
	{ "kevinhwang91/rnvimr", config = require("plugin.configs.rnvimr") },
	{ "tpope/vim-surround", keys = { "c", "d", "y" } },
	{ "tpope/vim-repeat" },
	{ "wfxr/minimap.vim", run = "brew install code-minimap", config = require("plugin.configs.minimap") },
	{ "karb94/neoscroll.nvim", event = "WinScrolled", config = require("plugin.configs.neoscroll") },
	{ "folke/zen-mode.nvim", cmd = "ZenMode", config = require("plugin.configs.zen-mode") },
	-- { "folke/twilight.nvim", config = require("plugin.configs.twilight") },
	--CODING-GENERAL=================================================================================================
	"p00f/nvim-ts-rainbow",
	{ "SirVer/ultisnips", config = require("plugin.configs.ultisnips") },
	{ "honza/vim-snippets", event = "InsertEnter" },
	{ "simrat39/symbols-outline.nvim", config = require("plugin.configs.symbols-outline") },
	{ "michaelb/sniprun", run = "bash install.sh", cmd = "SnipRun" },
	{ "lukas-reineke/indent-blankline.nvim", event = "BufRead", setup = require("plugin.configs.indent-blankline") },
	--CODING-FE======================================================================================================
	{ "mattn/emmet-vim", event = "InsertEnter" },
	{ "windwp/nvim-ts-autotag" },
	{ "turbio/bracey.vim", run = "npm install --prefix server", cmd = "Bracey" },
	{ "norcalli/nvim-colorizer.lua", config = require("plugin.configs.colorizer") },
	{
		"dsznajder/vscode-es7-javascript-react-snippets",
		run = "yarn install --frozen-lockfile && yarn compile",
		event = "InsertEnter",
	},
	--WRITING========================================================================================================
	"vimwiki/vimwiki",
	{ "iamcco/markdown-preview.nvim", run = "cd app && yarn install", cmd = "MarkdownPreview" },
	{ "mzlogin/vim-markdown-toc", ft = "markdown" },
	{ "jbyuki/venn.nvim", cmd = "VBox" },
	{ "rhysd/vim-grammarous", cmd = "GrammarousCheck" },
	{ "preservim/vim-pencil", ft = "markdown" },
	{ "reedes/vim-wordy", ft = "markdown" },
	{ "npxbr/glow.nvim", cmd = "Glow" },
	{
		"reedes/vim-litecorrect",
		config = vim.cmd(
			[[ augroup litecorrect autocmd! | autocmd FileType markdown,mkd call litecorrect#init() | autocmd FileType textile call litecorrect#init() | augroup END ]]
		),
	},
}
