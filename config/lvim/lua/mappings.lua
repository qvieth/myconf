-- MAPPINGS

-- DOUBLE ESC
lvim.keys.term_mode["<Esc><Esc>"] = "<C-\\><C-n>"
lvim.keys.normal_mode["<Esc><Esc>"] = "<CMD>lua DefaultState()<CR>"

-- RNVIMR
lvim.keys.normal_mode["<F1>"] = "<CMD>RnvimrToggle<CR>"
lvim.keys.insert_mode["<F1>"] = "<Esc><CMD>RnvimrToggle<CR>"
lvim.keys.term_mode["<F1>"] = "<C-\\><C-n><CMD>RnvimrToggle<CR>"

-- VENN.NVIM
lvim.keys.normal_mode["v"] = "<C-v>"
-- enable or disable keymappings for venn
function _G.toggle_venn()
	local venn_enabled = vim.inspect(vim.b.venn_enabled)
	if venn_enabled == "nil" then
		vim.b.venn_enabled = true
		vim.cmd([[setlocal ve=all]])
		-- draw a box by pressing "v" with visual selection
		vim.api.nvim_buf_set_keymap(0, "v", "v", ":VBox<cr>", { noremap = true })
		-- draw a line on HJKL keystokes
		vim.api.nvim_buf_set_keymap(0, "n", "J", "<C-v>j:VBox<CR>", { noremap = true })
		vim.api.nvim_buf_set_keymap(0, "n", "K", "<C-v>k:VBox<CR>", { noremap = true })
		vim.api.nvim_buf_set_keymap(0, "n", "L", "<C-v>l:VBox<CR>", { noremap = true })
		vim.api.nvim_buf_set_keymap(0, "n", "H", "<C-v>h:VBox<CR>", { noremap = true })
		-- visual change
		vim.cmd("colorscheme nord")
		vim.o.cursorcolumn = true
		vim.o.relativenumber = true
	else
		vim.b.venn_enabled = nil
		DefaultState()
	end
end
-- toggle keymappings for venn using <leader>v
lvim.keys.normal_mode["<C-v>"] = ":lua toggle_venn()<CR>"

-- M FOR MACROS
lvim.keys.normal_mode["M"] = "q"
-- FOR NOW Q STAND FOR QUERY(FILE,WORDS,...)
lvim.keys.normal_mode["q"] = "<Nop>"
lvim.keys.normal_mode["qv"] = "<CMD>e~/v<CR>"

-- ZENMODE
lvim.keys.normal_mode["<Space><Space>"] = "<CMD>ZenMode<CR>"
