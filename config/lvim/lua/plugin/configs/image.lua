local M = function()
	-- Require and call setup function somewhere in your init.lua
	require("image").setup({
		render = {
			min_padding = 5,
			show_label = true,
			use_dither = true,
		},
		events = {
			update_on_nvim_resize = true,
		},
	})
end

return M
