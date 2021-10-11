-- MAPPINGS

-- DOUBLE ESC
vim.api.nvim_set_keymap("t", "<Esc><Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Esc><Esc>", "<CMD>lua DefaultState()<CR>", { noremap = true, silent = true })

-- TOGGLETERM
vim.api.nvim_set_keymap("n", "<F2>", "<CMD>ToggleTerm<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<F2>", "<Esc><CMD>ToggleTerm<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<F2>", "<C-\\><C-n><CMD>ToggleTerm<CR>", { noremap = true, silent = true })

-- RNVIMR
vim.api.nvim_set_keymap("n", "<F3>", "<CMD>RnvimrToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<F3>", "<Esc><CMD>RnvimrToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<F3>", "<C-\\><C-n><CMD>RnvimrToggle<CR>", { noremap = true, silent = true })

-- VENN.NVIM
vim.api.nvim_set_keymap("n", "v", "<C-v>", { noremap = true, silent = true })
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
vim.api.nvim_set_keymap("n", "<C-v>", ":lua toggle_venn()<CR>", { noremap = true })

-- M FOR MACROS
vim.api.nvim_set_keymap("n", "M", "q", { noremap = true, silent = true })

-- FOR NOW Q STAND FOR QUERY(FILE,WORDS,...)
vim.api.nvim_set_keymap("n", "q", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "qv", "<CMD>e~/v<CR>", { noremap = true, silent = true })

-- CLOSE(QUIT + BUFFER DELETE)
vim.api.nvim_set_keymap("n", "<Space>c", "<CMD>w<CR><CMD>bd<CR>", { noremap = true, silent = true })

-- ZENMODE
vim.api.nvim_set_keymap("n", "<Space><Space>", "<CMD>ZenMode<CR>", { noremap = true, silent = true })

-- BETTER WINDOW MAPPING
-- window zoom
vim.api.nvim_set_keymap("n", "<C-w>z", "<C-w>|<C-w>_", { noremap = true, silent = true })
-- normal mode
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
-- insert mode
vim.api.nvim_set_keymap("i", "<C-h>", "<Esc><C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-j>", "<Esc><C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-k>", "<Esc><C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-l>", "<Esc><C-w>l", { noremap = true, silent = true })
-- terminal mode
vim.api.nvim_set_keymap("t", "<C-h>", "<C-\\><C-n><C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-j>", "<C-\\><C-n><C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-k>", "<C-\\><C-n><C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-l>", "<C-\\><C-n><C-w>l", { noremap = true, silent = true })
