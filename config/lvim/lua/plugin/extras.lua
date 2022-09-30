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
	{ "samodostal/image.nvim", config = require("plugin.configs.image") },
	{ "chentoast/marks.nvim", config = require("plugin.configs.marks") },
	-- { "nvim-neorg/neorg", config = require("plugin.configs.neorg"), requires = "nvim-neorg/neorg-telescope" },
	-- { "rlue/vim-barbaric" },
	{ "arthurxavierx/vim-caser", keys = "g" },
	{ "junegunn/vim-easy-align", config = require("plugin.configs.vim-easy-align") },
	{ "kevinhwang91/rnvimr", cmd = "RnvimrToggle", config = require("plugin.configs.rnvimr") },
	{ "tpope/vim-surround", keys = { "c", "d", "y" } },
	{ "tpope/vim-repeat" },
	{ "karb94/neoscroll.nvim", event = "WinScrolled", config = require("plugin.configs.neoscroll") },
	{ "folke/zen-mode.nvim", cmd = "ZenMode", config = require("plugin.configs.zen-mode") },
	-- {
	-- 	"wfxr/minimap.vim",
	-- 	run = "brew install code-minimap",
	-- 	config = require("plugin.configs.minimap"),
	-- },
	--DATASCIENCE====================================================================================================
	"chrisbra/csv.vim",
	{ "goerz/jupytext.vim", run = "pip install jupytext", config = vim.cmd("let g:jupytext_fmt = 'py:percent'") },
	{ "untitled-ai/jupyter_ascending.vim" },
	--CODING-GENERAL=================================================================================================
	"p00f/nvim-ts-rainbow",
	{ "folke/trouble.nvim", cmd = "TroubleToggle" },
	{
		"rmagatti/goto-preview",
		config = function()
			require("goto-preview").setup({ default_mappings = true })
		end,
	},
	{
		"ray-x/lsp_signature.nvim",
		config = function()
			require("lsp_signature").setup()
		end,
	},
	{ "simrat39/symbols-outline.nvim" },
	{
		"stevearc/aerial.nvim",
		config = function()
			require("aerial").setup()
		end,
	},
	{ "michaelb/sniprun", run = "bash install.sh", config = require("plugin.configs.sniprun") },
	--SNIPPET-ENGINES================================================================================================
	{ "hrsh7th/cmp-vsnip" },
	{ "hrsh7th/vim-vsnip" },
	{ "SirVer/ultisnips", config = require("plugin.configs.ultisnips") },
	{ "quangnguyen30192/cmp-nvim-ultisnips", after = "nvim-cmp" },
	{ "tzachar/cmp-tabnine", run = "./install.sh", config = require("plugin.configs.cmp-tabnine") },
	--SNIPPETS-ARE-SEPARATED-FROM-THE-ENGINE =========================================================================
	{ "honza/vim-snippets", event = "InsertEnter" }, -- for ultisnips
	{
		"dsznajder/vscode-es7-javascript-react-snippets",
		run = "yarn install --frozen-lockfile && yarn compile",
		event = "InsertEnter",
		ft = { "html", "javascript", "javascriptreact" },
	},
	--CODING-FE======================================================================================================
	{ "mattn/emmet-vim", event = "InsertEnter", ft = { "html", "javascript", "javascriptreact" } },
	-- { "windwp/nvim-ts-autotag", ft = { "html", "javascript", "javascriptreact" } },
	{ "turbio/bracey.vim", run = "npm install --prefix server", cmd = "Bracey" },
	{
		"norcalli/nvim-colorizer.lua",
		ft = { "html", "css", "javascript" },
		config = require("plugin.configs.colorizer"),
	},
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
