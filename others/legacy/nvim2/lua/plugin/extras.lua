-- Packer Bootstraping
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
	use({
		"glacambre/firenvim",
		run = function()
			vim.fn["firenvim#install"](0)
		end,
	})
	--THEMES=================================================================================================================================
	-- use("christianchiarulli/nvcode-color-schemes.vim")
	-- use({ "pbrisbin/vim-colors-off" })
	use({ "pgdouyon/vim-yin-yang" })
	-- use({ "cideM/yui" })
	--ESSENTIALS=============================================================================================================================
	-- use({ "kyazdani42/nvim-web-devicons" })
	-- use("junegunn/fzf.vim")
	-- use({ "shadmansaleh/lualine.nvim", config = require("plugin.configs.lualine") })
	use("arthurxavierx/vim-caser")
	-- use({ "folke/which-key.nvim", config = require("plugin.configs.which-key") })
	use({ "akinsho/toggleterm.nvim", config = require("plugin.configs.toggleterm") })
	use({ "kevinhwang91/rnvimr", cmd = "RnvimrToggle" })
	-- WRITING===============================================================================================================================
	-- use({ "prettier/vim-prettier", run = "yarn install", ft = "markdown" })
	-- use({ "vimwiki/vimwiki", config = require("plugin.configs.vimwiki") })
	use({ "preservim/vim-pencil", config = require("plugin.configs.vim-pencil"), cmd = "Pencil" })
	-- use({ "iamcco/markdown-preview.nvim", run = "cd app && yarn install" })
	-- use({ "npxbr/glow.nvim", cmd = "Glow" })
	use({ "jbyuki/venn.nvim", cmd = "VBox" })
	use({ "reedes/vim-wordy", ft = "markdown", cmd = "WordyWordy" })
	-- use({ "rhysd/vim-grammarous", cmd = "GrammarousCheck" })
	-- use({ "mzlogin/vim-markdown-toc", ft = "markdown" })
	use({ "folke/zen-mode.nvim", config = require("plugin.configs.zen-mode"), cmd = "ZenMode" })
	-- use({ "dense-analysis/ale", config = require("plugin.configs.ale") })
	-- use({ "reedes/vim-litecorrect", config = require("plugin.configs.vim-litecorrect") })
end)
