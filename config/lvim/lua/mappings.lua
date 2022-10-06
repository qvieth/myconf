-- MAPPINGS

-- SNIPRUN
lvim.keys.normal_mode["<Space>o"] = "V:SnipRun<CR>"
lvim.keys.visual_mode["<Space>o"] = ":SnipRun<CR>"

-- TOGGLE BACKGROUND COLOR
lvim.keys.normal_mode["<Space>bg"] = ":let &bg=(&bg=='light'?'dark':'light')<CR>"

-- VENN.NVIM
require("plugin.configs.venn")
lvim.keys.normal_mode["v"] = "<C-v>"
lvim.keys.normal_mode["<C-v>"] = ":lua toggle_venn()<CR>"

-- DOUBLE ESC
lvim.keys.term_mode["<Esc><Esc>"] = "<C-\\><C-n>"
lvim.keys.normal_mode["<Esc><Esc>"] = ":lua DefaultState() <CR>"

-- NVIMTREE
lvim.keys.normal_mode["<F1>"] = ":NvimTreeToggle<CR>"
lvim.keys.insert_mode["<F1>"] = "<Esc>:NvimTreeToggle<CR>"
lvim.keys.term_mode["<F1>"] = "<C-\\><C-n>:NvimTreeToggle<CR>"

-- TOGGLETERM
lvim.keys.normal_mode["<F2>"] = ":ToggleTerm<CR>"
lvim.keys.insert_mode["<F2>"] = "<Esc>:ToggleTerm<CR>"
lvim.keys.term_mode["<F2>"] = "<C-\\><C-n>:ToggleTerm<CR>"

-- RNVIMR
lvim.keys.normal_mode["<F3>"] = ":RnvimrToggle<CR>"
lvim.keys.insert_mode["<F3>"] = "<Esc>:RnvimrToggle<CR>"
lvim.keys.term_mode["<F3>"] = "<C-\\><C-n>:RnvimrToggle<CR>"

-- AERIAL
lvim.keys.normal_mode["<F4>"] = ":AerialToggle<CR>"
lvim.keys.insert_mode["<F4>"] = "<Esc>:AerialToggle<CR>"

-- SYMBOLSOUTLINE
lvim.keys.normal_mode["<F5>"] = ":SymbolsOutline<CR>"
lvim.keys.insert_mode["<F5>"] = "<Esc>:SymbolsOutline<CR>"

-- M FOR MACROS && Q FOR QUERY
lvim.keys.normal_mode["M"] = "q"
lvim.keys.normal_mode["q"] = "<Nop>"
lvim.keys.normal_mode["qv"] = ":e ~/MyFolder/mynote/v<CR>"
lvim.keys.normal_mode["qb"] = ":e ~/MyFolder/myblog/content/posts/<CR>"

-- ZENMODE
lvim.keys.normal_mode["<Space><Space>"] = ":ZenMode<CR>"

-- WINDOW ZOOM
lvim.keys.normal_mode["<C-w>z"] = "<C-w>|<C-w>_"

-- JUPYTER_ASCENDING.VIM
lvim.keys.normal_mode["<Space>x"] = "<Plug>JupyterExecute"
lvim.keys.normal_mode["<Space>X"] = "<Plug>JupyterExecuteAll"

-- MARKS.NVIM
lvim.builtin.which_key.mappings["m"] = {
	name = "marks.nvim",
	a = { "<cmd>MarksListAll<cr>", "MarksListAll" },
	w = { "<cmd>MarksListBuf<cr>", "MarksListBuf" },
	g = { "<cmd>MarksListGlobal<cr>", "MarksListGlobal" },
	t = { "<cmd>MarksToggleSigns<cr>", "quickfix" },
}
-- GOTO.PREVIEW
-- in the config set default_mappings = true
-- gp -> gpi, gpd, gpr, gP

-- TROUBLE.NVIM
lvim.builtin.which_key.mappings["t"] = {
	name = "Trouble.nvim",
	t = { "<cmd>TroubleToggle<cr>", "trouble" },
	w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
	d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
	q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
	l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
	r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}

-- VIM-CASER
lvim.builtin.which_key.vmappings["c"] = {
	name = "vim-caser",
	m = { "<Plug>CaserVMixedCase", "MixedCase or PascalCase" },
	c = { "<Plug>CaserVCamelCase", "camelCase" },
	_ = { "<Plug>CaserVSnakeCase", "snake_case" },
	t = { "<Plug>CaserVTitleCase", "Title Case" },
	s = { "<Plug>CaserVSentenceCase", "Sentence case" },
	K = { "<Plug>CaserVTitleKebabCase", "Title-Dash-Case or Title-Kebab-Case" },
}
lvim.builtin.which_key.vmappings["c<Space>"] = { "<Plug>CaserVSpaceCase", "space case" }
lvim.builtin.which_key.vmappings["c-"] = { "<Plug>CaserVKebabCase", "dash-case or kebab-case" }
lvim.builtin.which_key.vmappings["c."] = { "<Plug>CaserVDotCase", "dot.case" }
