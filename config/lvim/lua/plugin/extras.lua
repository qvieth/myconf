-- EXTRA PLUGINS

lvim.plugins = {
	--COLORSCHEMES===================================================================================================
	"sainnhe/everforest",
	"sainnhe/gruvbox-material",
	"sainnhe/sonokai",
	"rebelot/kanagawa.nvim",
	"pbrisbin/vim-colors-off",
	"cideM/yui",
	--ESSENTIALS=====================================================================================================
	-- { "rlue/vim-barbaric" },
	{ "samodostal/image.nvim", config = require("plugin.configs.image") },
	{ "chentoast/marks.nvim", config = require("plugin.configs.marks") },
	{ "arthurxavierx/vim-caser" },
	{ "junegunn/vim-easy-align" },
	{ "kevinhwang91/rnvimr", cmd = "RnvimrToggle", config = require("plugin.configs.rnvimr") },
	{ "tpope/vim-surround", keys = { "c", "d", "y" } },
	{ "tpope/vim-repeat" },
	{ "karb94/neoscroll.nvim", event = "WinScrolled", config = require("plugin.configs.neoscroll") },
	{ "folke/zen-mode.nvim", cmd = "ZenMode", config = require("plugin.configs.zen-mode") },
	--DATASCIENCE====================================================================================================
	{ "luk400/vim-jukit", config = require("plugin.configs.vim-jukit"), cmd = "JukitOut" },
	"chrisbra/csv.vim",
	-- { "goerz/jupytext.vim", run = "pip install jupytext", config = vim.cmd("let g:jupytext_fmt = 'py:percent'") },
	-- { "untitled-ai/jupyter_ascending.vim" },
	--CODING-GENERAL=================================================================================================
	"p00f/nvim-ts-rainbow",
	{ "folke/trouble.nvim", cmd = "TroubleToggle" },
	{ "wfxr/minimap.vim", run = "brew install code-minimap" },
	{ "michaelb/sniprun", run = "bash install.sh", config = require("plugin.configs.sniprun") },
	{
		"rmagatti/goto-preview",
		config = function()
			require("goto-preview").setup({ default_mappings = true })
		end,
	},
	{
		"stevearc/aerial.nvim",
		config = function()
			require("aerial").setup()
		end,
	},
	{
		"simrat39/symbols-outline.nvim",
		config = function()
			require("symbols-outline").setup()
		end,
	},
	--SNIPPETS================================================================================================
	{ "tzachar/cmp-tabnine", run = "./install.sh", config = require("plugin.configs.cmp-tabnine") },
	{ "honza/vim-snippets" },
	--CODING-FE======================================================================================================
	{ "mattn/emmet-vim" },
	{ "norcalli/nvim-colorizer.lua", config = require("plugin.configs.colorizer") },
	--WRITING========================================================================================================
	{ "prettier/vim-prettier", run = "yarn install", ft = "markdown" },
	{ "vimwiki/vimwiki", config = require("plugin.configs.vimwiki") },
	{ "preservim/vim-pencil", ft = "markdown", config = require("plugin.configs.vim-pencil"), cmd = "Pencil" },
	{ "reedes/vim-litecorrect", ft = "markdown", config = require("plugin.configs.vim-litecorrect") },
	{ "iamcco/markdown-preview.nvim", run = "cd app && yarn install" },
	{ "jbyuki/venn.nvim", cmd = "VBox" },
	{ "rhysd/vim-grammarous", cmd = "GrammarousCheck" },
	{ "reedes/vim-wordy", ft = "markdown", cmd = "WordyWordy" },
}
