local M = {}

M.colorizer = function()
	local status_ok, colorizer = pcall(require, "colorizer")
	if not status_ok then
		return
	end
	colorizer.setup({ "*" }, {
		RGB = true, -- #RGB hex codes
		RRGGBB = true, -- #RRGGBB hex codes
		RRGGBBAA = true, -- #RRGGBBAA hex codes
		rgb_fn = true, -- CSS rgb() and rgba() functions
		hsl_fn = true, -- CSS hsl() and hsla() functions
		css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
		css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
	})
end

M.indent_blankline = function()
	vim.g.indent_blankline_buftype_exclude = { "terminal", "nofile" }
	vim.g.indent_blankline_filetype_exclude = {
		"help",
		"startify",
		"dashboard",
		"packer",
		"neogitstatus",
		"NvimTree",
		"Trouble",
	}
	vim.g.indentLine_enabled = 1
	vim.g.indent_blankline_char = "▏"
	vim.g.indent_blankline_show_current_context = true
	vim.g.indent_blankline_context_patterns = {
		"class",
		"return",
		"function",
		"method",
		"^if",
		"^while",
		"jsx_element",
		"^for",
		"^object",
		"^table",
		"block",
		"arguments",
		"if_statement",
		"else_clause",
		"jsx_element",
		"jsx_self_closing_element",
		"try_statement",
		"catch_clause",
		"import_statement",
		"operation_type",
	}
end

M.minimap = function()
	vim.g.minimap_width = 10
	vim.g.minimap_auto_start = 1
	vim.g.minimap_auto_start_win_enter = 1
	vim.g.minimap_close_filetypes = { "starify", "dashboard", "markdown" }
end

M.neoscroll = function()
	local status_ok, neoscroll = pcall(require, "neoscroll")
	if not status_ok then
		return
	end
	neoscroll.setup({
		-- All these keys will be mapped to their corresponding default scrolling animation
		mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
		hide_cursor = true, -- Hide cursor while scrolling
		stop_eof = true, -- Stop at <EOF> when scrolling downwards
		use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
		respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
		cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
		easing_function = nil, -- Default easing function
		pre_hook = nil, -- Function to run before the scrolling animation starts
		post_hook = nil, -- Function to run after the scrolling animation ends
	})
end

M.notify = function()
	local status_ok, notify = pcall(require, "notify")
	if not status_ok then
		return
	end
end

M.numb = function()
	local status_ok, numb = pcall(require, "numb")
	if not status_ok then
		return
	end
	numb.setup({
		show_numbers = true, -- Enable 'number' for the window while peeking
		show_cursorline = true, -- Enable 'cursorline' for the window while peeking
	})
end

M.rnvimr = function()
	-- Make Ranger replace netrw and be the file explorer
	-- vim.g.rnvimr_ex_enable = 1
	vim.g.rnvimr_draw_border = 1
	vim.g.rnvimr_pick_enable = 1
	vim.g.rnvimr_bw_enable = 1
end

M.symbols_outline = function()
	-- init.lua
	vim.g.symbols_outline = {
		highlight_hovered_item = true,
		show_guides = true,
		auto_preview = false,
		position = "right",
		width = 25,
		show_numbers = false,
		show_relative_numbers = false,
		show_symbol_details = true,
		keymaps = { -- These keymaps can be a string or a table for multiple keys
			close = { "<Esc>", "q" },
			goto_location = "<Cr>",
			focus_location = "o",
			hover_symbol = "<C-space>",
			toggle_preview = "K",
			rename_symbol = "r",
			code_actions = "a",
		},
		lsp_blacklist = {},
		symbol_blacklist = {},
		symbols = {
			File = { icon = "", hl = "TSURI" },
			Module = { icon = "", hl = "TSNamespace" },
			Namespace = { icon = "", hl = "TSNamespace" },
			Package = { icon = "", hl = "TSNamespace" },
			Class = { icon = "", hl = "TSType" },
			Method = { icon = "", hl = "TSMethod" },
			Property = { icon = "襁", hl = "TSMethod" },
			-- Field = { icon = "", hl = "TSField" },
			Field = { icon = "ﴲ", hl = "TSField" },
			Constructor = { icon = "", hl = "TSConstructor" },
			Enum = { icon = "練", hl = "TSType" },
			Interface = { icon = "ﰮ", hl = "TSType" },
			Function = { icon = "", hl = "TSFunction" },
			Variable = { icon = "", hl = "TSConstant" },
			Constant = { icon = "ﲀ", hl = "TSConstant" },
			String = { icon = "", hl = "TSString" },
			Number = { icon = "#", hl = "TSNumber" },
			Boolean = { icon = "⊨", hl = "TSBoolean" },
			Array = { icon = "", hl = "TSConstant" },
			Object = { icon = "⦿", hl = "TSType" },
			Key = { icon = "", hl = "TSType" },
			Null = { icon = "NULL", hl = "TSType" },
			EnumMember = { icon = "", hl = "TSField" },
			Struct = { icon = "ﳤ", hl = "TSType" },
			Event = { icon = "", hl = "TSType" },
			Operator = { icon = "+", hl = "TSOperator" },
			TypeParameter = { icon = "", hl = "TSParameter" },
		},
	}
end

M.twilight = function()
	local status_ok, twilight = pcall(require, "twilight")
	if not status_ok then
		return
	end
	twilight.setup({
		dimming = {
			alpha = 0.25, -- amount of dimming
			-- we try to get the foreground from the highlight groups or fallback color
			color = { "Normal", "#ffffff" },
		},
		context = 15, -- amount of lines we will try to show around the current line
		-- treesitter is used to automatically expand the visible text,
		-- but you can further control the types of nodes that should always be fully expanded
		expand = {
			"function",
			"method",
			"table",
			"if_statement",
		},
		exclude = {}, -- exclude these filetypes
	})
end

M.zen_mode = function()
	local status_ok, zen_mode = pcall(require, "zen-mode")
	if not status_ok then
		return
	end
	zen_mode.setup({
		window = {
			backdrop = 0.93,
			-- height = 0.9, -- height of the Zen window
			width = 0.8,
			options = {
				signcolumn = "no", -- disable signcolumn
				number = false, -- disable number column
				relativenumber = false, -- disable relative numbers
				-- cursorline = false, -- disable cursorline
				-- cursorcolumn = false, -- disable cursor column
				-- foldcolumn = "0", -- disable fold column
				-- list = false, -- disable whitespace characters
			},
		},
		plugins = {
			gitsigns = { enabled = false }, -- disables git signs
			tmux = { enabled = false },
			twilight = { enabled = true },
		},
		-- on_open = function()
		--   vim.lsp.diagnostic.disable()
		--   vim.cmd [[
		--       set foldlevel=10
		--       IndentBlanklineDisable
		--       ]]
		-- end,
		-- on_close = function()
		--   vim.lsp.diagnostic.enable()
		--   vim.cmd [[
		--       set foldlevel=5
		--       IndentBlanklineEnable
		--       ]]
		-- end,
	})
end

M.ultisnips = function()
	vim.g.UltiSnipsExpandTrigger = "<C-s>"
	vim.g.UltiSnipsJumpForwardTrigger = "<C-j>"
	vim.g.UltiSnipsJumpBackwardTrigger = "<C-k>"
end

M.vim_easy_align = function()
	vim.api.nvim_set_keymap("n", "ga", "<Plug>(EasyAlign)", { noremap = false, silent = false })
	vim.api.nvim_set_keymap("x", "ga", "<Plug>(EasyAlign)", { noremap = false, silent = false })
end

return M
