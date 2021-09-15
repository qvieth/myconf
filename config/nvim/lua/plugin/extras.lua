-- Packer BootstrapingLE
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path })
	execute("packadd packer.nvim")
end

-- Packer Install
return require("packer").startup(function()
	use("wbthomason/packer.nvim")
	use({ "kyazdani42/nvim-web-devicons" })
	use({
		"glacambre/firenvim",
		run = function()
			vim.fn["firenvim#install"](0)
		end,
	})
	--THEMES=================================================================================================================================
	use("christianchiarulli/nvcode-color-schemes.vim")
	use({ "pbrisbin/vim-colors-off" })
	use({ "pgdouyon/vim-yin-yang" })
	use({ "cideM/yui" })
	--ESSENTIALS=============================================================================================================================
	use({ "hoob3rt/lualine.nvim", config = require("plugin.configs.lualine") })
	use("tpope/vim-repeat")
	use("arthurxavierx/vim-caser")
	use("tpope/vim-commentary")
	use("tpope/vim-surround")
	use({ "junegunn/vim-easy-align", config = require("plugin.configs.vim-easy-align") })
	use({ "folke/which-key.nvim", config = require("plugin.configs.which-key") })
	use({ "akinsho/toggleterm.nvim", config = require("plugin.configs.toggleterm") })
	use({ "kevinhwang91/rnvimr", config = require("plugin.configs.rnvimr") })
	use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } } })
	-- WRITING===============================================================================================================================
	use({ "vimwiki/vimwiki", config = require("plugin.configs.vimwiki") })
	use({ "preservim/vim-pencil", config = require("plugin.configs.vim-pencil") })
	use({ "iamcco/markdown-preview.nvim", run = "cd app && yarn install", ft = "markdown" })
	use({ "npxbr/glow.nvim", ft = { "markdown" } })
	use({ "jbyuki/venn.nvim", cmd = "VBox" })
	use({ "reedes/vim-wordy", ft = "markdown" })
	use({ "rhysd/vim-grammarous", cmd = "GrammarousCheck" })
	use({ "prettier/vim-prettier", run = "yarn install" })
	use({ "mzlogin/vim-markdown-toc", ft = "markdown" })
	use({ "folke/zen-mode.nvim", config = require("plugin.configs.zen-mode") })
	use({ "dense-analysis/ale", config = require("plugin.configs.ale") })
	use({ "reedes/vim-litecorrect", config = require("plugin.configs.vim-litecorrect") })
end)
