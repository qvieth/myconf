-- REQUIRED BY MAPPINGS DO NOT DELETE
-- enable or disable keymappings for venn
function _G.toggle_venn()
	local venn_enabled = vim.inspect(vim.b.venn_enabled)
	if venn_enabled == "nil" then
		vim.b.venn_enabled = true
		vim.cmd([[setlocal ve=all]])
		-- draw by pressing "v" with visual selection
		vim.api.nvim_buf_set_keymap(0, "v", "v", ":VBox<cr>", { noremap = true })
		-- draw line on HJKL
		vim.api.nvim_buf_set_keymap(0, "n", "J", "<C-v>j:VBox<CR>", { noremap = true })
		vim.api.nvim_buf_set_keymap(0, "n", "K", "<C-v>k:VBox<CR>", { noremap = true })
		vim.api.nvim_buf_set_keymap(0, "n", "L", "<C-v>l:VBox<CR>", { noremap = true })
		vim.api.nvim_buf_set_keymap(0, "n", "H", "<C-v>h:VBox<CR>", { noremap = true })
		-- visual change
		vim.o.cursorcolumn = true
		vim.o.cursorline = true
		vim.o.relativenumber = true
	else
		vim.b.venn_enabled = nil
		DefaultState()
		vim.cmd("mapclear <buffer>") -- mapclear <buffer> also clear vimwiki keymap
	end
end
