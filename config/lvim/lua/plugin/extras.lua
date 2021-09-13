-- EXTRA PLUGINS

lvim.plugins = {
	--COLORSCHEMES===================================================================================================
	"ChristianChiarulli/nvcode-color-schemes.vim",
	"pbrisbin/vim-colors-off", -- "pgdouyon/vim-yin-yang", "cideM/yui",
	--ESSENTIALS=====================================================================================================
	"arthurxavierx/vim-caser",
	{ "nacro90/numb.nvim", event = "BufRead", config = require("plugin.configs.numb") },
	{ "junegunn/vim-easy-align", config = require("plugin.configs.vim-easy-align") },
	{ "kevinhwang91/rnvimr", cmd = "RnvimrToggle", config = require("plugin.configs.rnvimr") },
	{ "tpope/vim-surround", keys = { "c", "d", "y" } },
	{ "tpope/vim-repeat" },
	{ "wfxr/minimap.vim", run = "brew install code-minimap", config = require("plugin.configs.minimap") },
	{ "karb94/neoscroll.nvim", event = "WinScrolled", config = require("plugin.configs.neoscroll") },
	{ "folke/zen-mode.nvim", cmd = "ZenMode", config = require("plugin.configs.zen-mode") },
	-- { "folke/twilight.nvim", config = require("plugin.configs.twilight") },
	--CODING-GENERAL=================================================================================================
	"p00f/nvim-ts-rainbow",
	{ "tzachar/cmp-tabnine", run = "./install.sh", config = require("plugin.configs.cmp-tabnine") },
	-- { "SirVer/ultisnips", config = require("plugin.configs.ultisnips") },
	{ "honza/vim-snippets", event = "InsertEnter" },
	{ "simrat39/symbols-outline.nvim", cmd = "SymbolsOutline", config = require("plugin.configs.symbols-outline") },
	{ "michaelb/sniprun", run = "bash install.sh", cmd = "SnipRun" },
	{ "lukas-reineke/indent-blankline.nvim", event = "BufRead", setup = require("plugin.configs.indent-blankline") },
	--CODING-FE======================================================================================================
	{ "mattn/emmet-vim", event = "InsertEnter", ft = { "html", "javascript", "javascriptreact" } },
	{ "windwp/nvim-ts-autotag" },
	{ "turbio/bracey.vim", run = "npm install --prefix server", cmd = "Bracey" },
	{ "norcalli/nvim-colorizer.lua", config = require("plugin.configs.colorizer") },
	{
		"dsznajder/vscode-es7-javascript-react-snippets",
		run = "yarn install --frozen-lockfile && yarn compile",
		event = "InsertEnter",
		ft = { "html", "javascript", "javascriptreact" },
	},
	--WRITING========================================================================================================
	{ "vimwiki/vimwiki", config = require("plugin.configs.vimwiki") },
	{ "preservim/vim-pencil", ft = "markdown", config = require("plugin.configs.vim-pencil") },
	{ "reedes/vim-litecorrect", config = require("plugin.configs.vim-litecorrect") },
	{ "iamcco/markdown-preview.nvim", run = "cd app && yarn install", cmd = "MarkdownPreview" },
	{ "jbyuki/venn.nvim", cmd = "VBox" },
	{ "rhysd/vim-grammarous", cmd = "GrammarousCheck" },
	{ "reedes/vim-wordy", ft = "markdown" },
	{ "npxbr/glow.nvim", cmd = "Glow" },
}
