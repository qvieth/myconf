local M = function()
	vim.api.nvim_set_keymap("n", "ga", "<Plug>(EasyAlign)", { noremap = false, silent = false })
	vim.api.nvim_set_keymap("x", "ga", "<Plug>(EasyAlign)", { noremap = false, silent = false })
end
return M
