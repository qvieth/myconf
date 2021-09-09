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
	{ "nacro90/numb.nvim", event = "BufRead", config = require("plugins.config.numb") },
	{ "junegunn/vim-easy-align", config = require("plugins.config.vim-easy-align") },
	{ "kevinhwang91/rnvimr", config = require("plugins.config.rnvimr") },
	{ "tpope/vim-surround", keys = { "c", "d", "y" } },
	{ "tpope/vim-repeat" },
	{ "wfxr/minimap.vim", run = "brew install code-minimap", config = require("plugins.config.minimap") },
	{ "karb94/neoscroll.nvim", event = "WinScrolled", config = require("plugins.config.neoscroll") },
	{ "folke/zen-mode.nvim", cmd = "ZenMode", config = require("plugins.config.zen-mode") },
	-- { "folke/twilight.nvim", config = require("plugins.config.twilight") },
	--CODING-GENERAL=================================================================================================
	"p00f/nvim-ts-rainbow",
	{ "SirVer/ultisnips", config = require("plugins.config.ultisnips") },
	{ "honza/vim-snippets", event = "InsertEnter" },
	{ "simrat39/symbols-outline.nvim", config = require("plugins.config.symbols-outline") },
	{ "michaelb/sniprun", run = "bash install.sh", cmd = "SnipRun" },
	{ "lukas-reineke/indent-blankline.nvim", event = "BufRead", setup = require("plugins.config.indent-blankline") },
	--CODING-FE======================================================================================================
	{ "mattn/emmet-vim", event = "InsertEnter" },
	{ "windwp/nvim-ts-autotag" },
	{ "turbio/bracey.vim", run = "npm install --prefix server", cmd = "Bracey" },
	{ "norcalli/nvim-colorizer.lua", config = require("plugins.config.colorizer") },
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
