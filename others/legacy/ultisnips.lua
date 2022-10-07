local M = function()
	vim.g.UltiSnipsExpandTrigger = "<C-s>"
	vim.g.UltiSnipsJumpForwardTrigger = "<C-j>"
	vim.g.UltiSnipsJumpBackwardTrigger = "<C-k>"
	vim.g.UltiSnipsEditSplit = "vertical"
	vim.g.UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit = "~/.config/lvim/UltiSnips"
end
return M
