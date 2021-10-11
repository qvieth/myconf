local M = function()
	local status_ok, lualine = pcall(require, "lualine")
	if not status_ok then
		return
	end
	require("lualine").setup({ options = { theme = vim.g.colors_name } })
end
return M
