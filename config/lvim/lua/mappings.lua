-- MAPPINGS

-- VENN.NVIM
require("plugin.configs.venn")
lvim.keys.normal_mode["v"] = "<C-v>"
lvim.keys.normal_mode["<C-v>"] = ":lua toggle_venn()<CR>"

-- DOUBLE ESC
lvim.keys.term_mode["<Esc><Esc>"] = "<C-\\><C-n>"
lvim.keys.normal_mode["<Esc><Esc>"] = "<CMD>lua DefaultState()<CR>"

-- NVIMTREE
lvim.keys.normal_mode["<F1>"] = "<CMD>NvimTreeToggle<CR>"
lvim.keys.insert_mode["<F1>"] = "<Esc><CMD>NvimTreeToggle<CR>"
lvim.keys.term_mode["<F1>"] = "<C-\\><C-n><CMD>NvimTreeToggle<CR>"

-- TOGGLETERM
lvim.builtin.terminal.open_mapping = "<F2>"

-- RNVIMR
lvim.keys.normal_mode["<F3>"] = "<CMD>RnvimrToggle<CR>"
lvim.keys.insert_mode["<F3>"] = "<Esc><CMD>RnvimrToggle<CR>"
lvim.keys.term_mode["<F3>"] = "<C-\\><C-n><CMD>RnvimrToggle<CR>"

-- M FOR MACROS && Q FOR QUERY
lvim.keys.normal_mode["M"] = "q"
lvim.keys.normal_mode["q"] = "<Nop>"
lvim.keys.normal_mode["qv"] = "<CMD>e ~/mynote/v<CR>"
lvim.keys.normal_mode["qb"] = "<CMD>e ~/myblog/content/posts/<CR>"

-- ZENMODE
lvim.keys.normal_mode["<Space><Space>"] = "<CMD>ZenMode<CR>"

-- WINDOW ZOOM
lvim.keys.normal_mode["<C-w>z"] = "<C-w>|<C-w>_"
