-- EXTRA PLUGINS
lvim.plugins = {
	--COLORSCHEMES===================================================================================================
	"rebelot/kanagawa.nvim",
	-- "ChristianChiarulli/nvcode-color-schemes.vim",
	-- "LunarVim/Colorschemes",
	"pbrisbin/vim-colors-off",
	-- "pgdouyon/vim-yin-yang", "cideM/yui", "EdenEast/nightfox.nvim",
	--ESSENTIALS=====================================================================================================
	{ "arthurxavierx/vim-caser", keys = "g" },
	{ "nacro90/numb.nvim", event = "BufRead", config = require("plugin.configs.numb") },
	{ "junegunn/vim-easy-align", config = require("plugin.configs.vim-easy-align") },
	{ "kevinhwang91/rnvimr", cmd = "RnvimrToggle", config = require("plugin.configs.rnvimr") },
	{ "tpope/vim-surround", keys = { "c", "d", "y" } },
	{ "tpope/vim-repeat" },
	-- { "wfxr/minimap.vim", run = "brew install code-minimap", config = require("plugin.configs.minimap") },
	{ "karb94/neoscroll.nvim", event = "WinScrolled", config = require("plugin.configs.neoscroll") },
	{ "folke/zen-mode.nvim", cmd = "ZenMode", config = require("plugin.configs.zen-mode") },
	--CODING-GENERAL=================================================================================================
	"p00f/nvim-ts-rainbow",
	{ "SirVer/ultisnips", config = require("plugin.configs.ultisnips") },
	{ "quangnguyen30192/cmp-nvim-ultisnips", after = "nvim-cmp" },
	{ "tzachar/cmp-tabnine", run = "./install.sh", config = require("plugin.configs.cmp-tabnine") },
	{ "honza/vim-snippets", event = "InsertEnter" },
	{ "simrat39/symbols-outline.nvim", cmd = "SymbolsOutline", config = require("plugin.configs.symbols-outline") },
	{ "michaelb/sniprun", run = "bash install.sh", cmd = "SnipRun" },
	{ "lukas-reineke/indent-blankline.nvim", event = "BufRead", setup = require("plugin.configs.indent-blankline") },
	--CODING-FE======================================================================================================
	{ "mattn/emmet-vim", event = "InsertEnter", ft = { "html", "javascript", "javascriptreact" } },
	{ "windwp/nvim-ts-autotag", ft = { "html", "javascript", "javascriptreact" } },
	{ "turbio/bracey.vim", run = "npm install --prefix server", cmd = "Bracey" },
	{
		"norcalli/nvim-colorizer.lua",
		ft = { "html", "css", "javascript" },
		config = require("plugin.configs.colorizer"),
	},
	-- { "dsznajder/vscode-es7-javascript-react-snippets", run = "yarn install --frozen-lockfile && yarn compile", event = "InsertEnter", ft = { "html", "javascript", "javascriptreact" }, },
	--WRITING========================================================================================================
	{ "prettier/vim-prettier", run = "yarn install", ft = "markdown" },
	{ "vimwiki/vimwiki", config = require("plugin.configs.vimwiki") },
	{ "preservim/vim-pencil", ft = "markdown", config = require("plugin.configs.vim-pencil"), cmd = "Pencil" },
	{ "reedes/vim-litecorrect", ft = "markdown", config = require("plugin.configs.vim-litecorrect") },
	{ "iamcco/markdown-preview.nvim", run = "cd app && yarn install" },
	{ "jbyuki/venn.nvim", cmd = "VBox" },
	{ "rhysd/vim-grammarous", cmd = "GrammarousCheck" },
	{ "reedes/vim-wordy", ft = "markdown", cmd = "WordyWordy" },
	{ "npxbr/glow.nvim", cmd = "Glow" },
}
