-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/qvieth/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/qvieth/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/qvieth/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/qvieth/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/qvieth/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/FixCursorHold.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/LuaSnip"
  },
  ["barbar.nvim"] = {
    config = { "\27LJ\2\2=\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20core.bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/barbar.nvim"
  },
  ["bracey.vim"] = {
    commands = { "Bracey" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/bracey.vim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/cmp-nvim-lua"
  },
  ["cmp-nvim-ultisnips"] = {
    after_files = { "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/cmp-nvim-ultisnips/after/plugin/cmp_nvim_ultisnips.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/cmp-nvim-ultisnips"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/cmp-path"
  },
  ["cmp-tabnine"] = {
    config = { "\27LJ\2\2p\0\0\4\0\4\0\b6\0\0\0'\1\1\0B\0\2\2\18\2\0\0009\1\2\0005\3\3\0B\1\3\1K\0\1\0\1\0\3\tsort\2\14max_lines\3Ë\a\20max_num_results\3\20\nsetup\23cmp_tabnine.config\frequire\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/cmp-tabnine"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/cmp_luasnip"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\2<\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19core.dashboard\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/dashboard-nvim"
  },
  ["emmet-vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/emmet-vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18core.gitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/gitsigns.nvim"
  },
  ["glow.nvim"] = {
    commands = { "Glow" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/glow.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\2:\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17core.lualine\frequire\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/markdown-preview.nvim"
  },
  ["minimap.vim"] = {
    config = { "\27LJ\2\2˚\1\0\0\2\0\a\0\0176\0\0\0009\0\1\0)\1\n\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0005\1\6\0=\1\5\0K\0\1\0\1\f\0\0\5\fOutline\14dashboard\thelp\rmarkdown\nnetrw\vpacker\vrnvimr\fstarify\15toggleterm\fvimwiki\28minimap_close_filetypes!minimap_auto_start_win_enter\23minimap_auto_start\18minimap_width\6g\bvim\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/minimap.vim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\2Î\1\0\0\5\0\a\0\r6\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\3\5\0005\4\4\0=\4\6\3B\2\2\1K\0\1\0\rmappings\1\0\5\25cursor_scrolls_alone\2\rstop_eof\2\24use_local_scrolloff\1\22respect_scrolloff\1\16hide_cursor\1\1\n\0\0\n<C-u>\n<C-d>\n<C-b>\n<C-f>\n<C-y>\n<C-e>\azt\azz\azb\nsetup\14neoscroll\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/neoscroll.nvim"
  },
  ["nlsp-settings.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/nlsp-settings.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/null-ls.nvim"
  },
  ["numb.nvim"] = {
    config = { "\27LJ\2\2n\0\0\4\0\5\0\v6\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\3\4\0B\2\2\1K\0\1\0\1\0\2\17show_numbers\2\20show_cursorline\2\nsetup\tnumb\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/numb.nvim"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/nvcode-color-schemes.vim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\2<\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19core.autopairs\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "nvim-autopairs", "cmp-nvim-ultisnips" },
    loaded = true,
    only_config = true
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\2í\1\0\0\5\0\6\0\f6\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\3\4\0005\4\5\0B\2\3\1K\0\1\0\1\0\a\vRRGGBB\2\vhsl_fn\2\rRRGGBBAA\2\bcss\2\vrgb_fn\2\bRGB\2\vcss_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\2:\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17core.comment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/nvim-comment"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    config = { "\27LJ\2\2=\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\1\2\0B\1\1\1K\0\1\0\nsetup\20core.lspinstall\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/nvim-lspinstall"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18core.nvimtree\frequire\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\2=\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20core.treesitter\frequire\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/popup.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\2:\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17core.project\frequire\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/project.nvim"
  },
  rnvimr = {
    commands = { "RnvimrToggle" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/rnvimr"
  },
  sniprun = {
    commands = { "SnipRun" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/sniprun"
  },
  ["symbols-outline.nvim"] = {
    commands = { "SymbolsOutline" },
    config = { "\27LJ\2\2°\v\0\0\4\0@\0C6\0\0\0009\0\1\0005\1\3\0005\2\5\0005\3\4\0=\3\6\2=\2\a\0014\2\0\0=\2\b\0014\2\0\0=\2\t\0015\2\v\0005\3\n\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\0025\3\19\0=\3\20\0025\3\21\0=\3\22\0025\3\23\0=\3\24\0025\3\25\0=\3\26\0025\3\27\0=\3\28\0025\3\29\0=\3\30\0025\3\31\0=\3 \0025\3!\0=\3\"\0025\3#\0=\3$\0025\3%\0=\3&\0025\3'\0=\3(\0025\3)\0=\3*\0025\3+\0=\3,\0025\3-\0=\3.\0025\3/\0=\0030\0025\0031\0=\0032\0025\0033\0=\0034\0025\0035\0=\0036\0025\0037\0=\0038\0025\0039\0=\3:\0025\3;\0=\3<\0025\3=\0=\3>\2=\2?\1=\1\2\0K\0\1\0\fsymbols\18TypeParameter\1\0\2\ticon\bÔûÉ\ahl\16TSParameter\rOperator\1\0\2\ticon\6+\ahl\15TSOperator\nEvent\1\0\2\ticon\bÔÉß\ahl\vTSType\vStruct\1\0\2\ticon\bÔ≥§\ahl\vTSType\15EnumMember\1\0\2\ticon\bÔÖù\ahl\fTSField\tNull\1\0\2\ticon\tNULL\ahl\vTSType\bKey\1\0\2\ticon\bÔ†ä\ahl\vTSType\vObject\1\0\2\ticon\b‚¶ø\ahl\vTSType\nArray\1\0\2\ticon\bÔô©\ahl\15TSConstant\fBoolean\1\0\2\ticon\b‚ä®\ahl\14TSBoolean\vNumber\1\0\2\ticon\6#\ahl\rTSNumber\vString\1\0\2\ticon\bÔíû\ahl\rTSString\rConstant\1\0\2\ticon\bÔ≤Ä\ahl\15TSConstant\rVariable\1\0\2\ticon\bÓûõ\ahl\15TSConstant\rFunction\1\0\2\ticon\bÔûî\ahl\15TSFunction\14Interface\1\0\2\ticon\bÔ∞Æ\ahl\vTSType\tEnum\1\0\2\ticon\bÔ©ó\ahl\vTSType\16Constructor\1\0\2\ticon\bÔê•\ahl\18TSConstructor\nField\1\0\2\ticon\bÔ¥≤\ahl\fTSField\rProperty\1\0\2\ticon\bÔ™∂\ahl\rTSMethod\vMethod\1\0\2\ticon\bÔö¶\ahl\rTSMethod\nClass\1\0\2\ticon\bÔ†ñ\ahl\vTSType\fPackage\1\0\2\ticon\bÔ£ñ\ahl\16TSNamespace\14Namespace\1\0\2\ticon\bÔô©\ahl\16TSNamespace\vModule\1\0\2\ticon\bÔô®\ahl\16TSNamespace\tFile\1\0\0\1\0\2\ticon\bÔúì\ahl\nTSURI\21symbol_blacklist\18lsp_blacklist\fkeymaps\nclose\1\0\6\18rename_symbol\6r\18goto_location\t<Cr>\19focus_location\6o\17code_actions\6a\19toggle_preview\6K\17hover_symbol\14<C-space>\1\3\0\0\n<Esc>\6q\1\0\b\nwidth\3#\27highlight_hovered_item\2\rposition\nright\24show_symbol_details\2\16show_guides\2\26show_relative_numbers\2\17auto_preview\2\17show_numbers\2\20symbols_outline\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/symbols-outline.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\2<\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19core.telescope\frequire\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18core.terminal\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/toggleterm.nvim"
  },
  ultisnips = {
    config = { "\27LJ\2\2£\1\0\0\2\0\b\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0K\0\1\0\n<C-k>!UltiSnipsJumpBackwardTrigger\n<C-j> UltiSnipsJumpForwardTrigger\n<C-s>\27UltiSnipsExpandTrigger\6g\bvim\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/ultisnips"
  },
  ["venn.nvim"] = {
    commands = { "VBox" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/venn.nvim"
  },
  ["vim-caser"] = {
    keys = { { "", "g" } },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-caser"
  },
  ["vim-colors-off"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/vim-colors-off"
  },
  ["vim-easy-align"] = {
    config = { "\27LJ\2\2§\1\0\0\5\0\t\0\0176\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\4\0'\3\5\0005\4\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\a\0'\2\4\0'\3\5\0005\4\b\0B\0\5\1K\0\1\0\1\0\2\vsilent\1\fnoremap\1\6x\1\0\2\vsilent\1\fnoremap\1\22<Plug>(EasyAlign)\aga\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-grammarous"] = {
    commands = { "GrammarousCheck" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-grammarous"
  },
  ["vim-litecorrect"] = {
    config = { "\27LJ\2\2«\1\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0ß\1  augroup litecorrect\n    autocmd!\n    autocmd FileType markdown,mkd call litecorrect#init()\n    autocmd FileType textile call litecorrect#init()\n  augroup END\n  \bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-litecorrect"
  },
  ["vim-pencil"] = {
    commands = { "Pencil" },
    config = { "\27LJ\2\2ä\1\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0k  let g:pencil#wrapModeDefault = 'soft'\n  let g:pencil#autoformat = 0\n  let g:pencil#textwidth = 74\n  \bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-pencil"
  },
  ["vim-prettier"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-snippets"
  },
  ["vim-surround"] = {
    keys = { { "", "c" }, { "", "d" }, { "", "y" } },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-surround"
  },
  ["vim-wordy"] = {
    commands = { "WordyWordy" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-wordy"
  },
  vimwiki = {
    config = { "\27LJ\2\2‚\5\0\0\3\0\n\0\0216\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0004\1\a\0005\2\4\0>\2\1\0015\2\5\0>\2\2\0015\2\6\0>\2\3\0015\2\a\0>\2\4\0015\2\b\0>\2\5\0015\2\t\0>\2\6\1=\1\3\0K\0\1\0\1\0\1\tpath\14~/mywiki/\1\0\1\tpath\16~/mysecret/\1\0\1\tpath\15~/mydraft/\1\0\b\21custom_wiki2html\21vimwiki_markdown\tpath\r~/myblog\21template_default\fdefault\vsyntax\rmarkdown\bext\b.md\14path_html\24~/mynote_site_html/\18template_path\25~/vimwiki/templates/\17template_ext\t.tpl\1\0\b\21custom_wiki2html\21vimwiki_markdown\tpath\16~/myarchive\21template_default\fdefault\vsyntax\rmarkdown\bext\b.md\14path_html\24~/mynote_site_html/\18template_path\25~/vimwiki/templates/\17template_ext\t.tpl\1\0\b\21custom_wiki2html\21vimwiki_markdown\tpath\r~/mynote\21template_default\fdefault\vsyntax\rmarkdown\bext\b.md\14path_html\24~/mynote_site_html/\18template_path\25~/vimwiki/templates/\17template_ext\t.tpl\17vimwiki_list\23vimwiki_global_ext\6g\bvim\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/vimwiki"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\2<\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19core.which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/which-key.nvim"
  },
  ["zen-mode.nvim"] = {
    commands = { "ZenMode" },
    config = { "\27LJ\2\2©\2\0\0\6\0\17\0\0236\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\3\a\0005\4\4\0005\5\5\0=\5\6\4=\4\b\0035\4\n\0005\5\t\0=\5\v\0045\5\f\0=\5\r\0045\5\14\0=\5\15\4=\4\16\3B\2\2\1K\0\1\0\fplugins\rtwilight\1\0\1\fenabled\2\ttmux\1\0\1\fenabled\1\rgitsigns\1\0\0\1\0\1\fenabled\1\vwindow\1\0\0\foptions\1\0\3\15signcolumn\ano\vnumber\1\19relativenumber\1\1\0\2\nwidth\4ö≥ÊÃ\tô≥¶ˇ\3\rbackdrop\4√Î£·\5èÖ∑ˇ\3\nsetup\rzen-mode\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: indent-blankline.nvim
time([[Setup for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\2‰\4\0\0\2\0\f\0\0256\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0006\0\0\0009\0\1\0+\1\2\0=\1\t\0006\0\0\0009\0\1\0005\1\v\0=\1\n\0K\0\1\0\1\21\0\0\nclass\vreturn\rfunction\vmethod\b^if\v^while\16jsx_element\t^for\f^object\v^table\nblock\14arguments\17if_statement\16else_clause\16jsx_element\29jsx_self_closing_element\18try_statement\17catch_clause\21import_statement\19operation_type&indent_blankline_context_patterns*indent_blankline_show_current_context\b‚ñè\26indent_blankline_char\23indentLine_enabled\1\n\0\0\thelp\rstartify\14dashboard\vpacker\17neogitstatus\rNvimTree\fTrouble\fvimwiki\rmarkdown&indent_blankline_filetype_exclude\1\3\0\0\rterminal\vnofile%indent_blankline_buftype_exclude\6g\bvim\0", "setup", "indent-blankline.nvim")
time([[Setup for indent-blankline.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\2<\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19core.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: cmp-tabnine
time([[Config for cmp-tabnine]], true)
try_loadstring("\27LJ\2\2p\0\0\4\0\4\0\b6\0\0\0'\1\1\0B\0\2\2\18\2\0\0009\1\2\0005\3\3\0B\1\3\1K\0\1\0\1\0\3\tsort\2\14max_lines\3Ë\a\20max_num_results\3\20\nsetup\23cmp_tabnine.config\frequire\0", "config", "cmp-tabnine")
time([[Config for cmp-tabnine]], false)
-- Config for: vim-easy-align
time([[Config for vim-easy-align]], true)
try_loadstring("\27LJ\2\2§\1\0\0\5\0\t\0\0176\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\4\0'\3\5\0005\4\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\a\0'\2\4\0'\3\5\0005\4\b\0B\0\5\1K\0\1\0\1\0\2\vsilent\1\fnoremap\1\6x\1\0\2\vsilent\1\fnoremap\1\22<Plug>(EasyAlign)\aga\6n\20nvim_set_keymap\bapi\bvim\0", "config", "vim-easy-align")
time([[Config for vim-easy-align]], false)
-- Config for: minimap.vim
time([[Config for minimap.vim]], true)
try_loadstring("\27LJ\2\2˚\1\0\0\2\0\a\0\0176\0\0\0009\0\1\0)\1\n\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0005\1\6\0=\1\5\0K\0\1\0\1\f\0\0\5\fOutline\14dashboard\thelp\rmarkdown\nnetrw\vpacker\vrnvimr\fstarify\15toggleterm\fvimwiki\28minimap_close_filetypes!minimap_auto_start_win_enter\23minimap_auto_start\18minimap_width\6g\bvim\0", "config", "minimap.vim")
time([[Config for minimap.vim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\0026\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rcore.cmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\2:\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17core.lualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: ultisnips
time([[Config for ultisnips]], true)
try_loadstring("\27LJ\2\2£\1\0\0\2\0\b\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0K\0\1\0\n<C-k>!UltiSnipsJumpBackwardTrigger\n<C-j> UltiSnipsJumpForwardTrigger\n<C-s>\27UltiSnipsExpandTrigger\6g\bvim\0", "config", "ultisnips")
time([[Config for ultisnips]], false)
-- Config for: vimwiki
time([[Config for vimwiki]], true)
try_loadstring("\27LJ\2\2‚\5\0\0\3\0\n\0\0216\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0004\1\a\0005\2\4\0>\2\1\0015\2\5\0>\2\2\0015\2\6\0>\2\3\0015\2\a\0>\2\4\0015\2\b\0>\2\5\0015\2\t\0>\2\6\1=\1\3\0K\0\1\0\1\0\1\tpath\14~/mywiki/\1\0\1\tpath\16~/mysecret/\1\0\1\tpath\15~/mydraft/\1\0\b\21custom_wiki2html\21vimwiki_markdown\tpath\r~/myblog\21template_default\fdefault\vsyntax\rmarkdown\bext\b.md\14path_html\24~/mynote_site_html/\18template_path\25~/vimwiki/templates/\17template_ext\t.tpl\1\0\b\21custom_wiki2html\21vimwiki_markdown\tpath\16~/myarchive\21template_default\fdefault\vsyntax\rmarkdown\bext\b.md\14path_html\24~/mynote_site_html/\18template_path\25~/vimwiki/templates/\17template_ext\t.tpl\1\0\b\21custom_wiki2html\21vimwiki_markdown\tpath\r~/mynote\21template_default\fdefault\vsyntax\rmarkdown\bext\b.md\14path_html\24~/mynote_site_html/\18template_path\25~/vimwiki/templates/\17template_ext\t.tpl\17vimwiki_list\23vimwiki_global_ext\6g\bvim\0", "config", "vimwiki")
time([[Config for vimwiki]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\2:\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17core.project\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\2=\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20core.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18core.nvimtree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-autopairs ]]

-- Config for: nvim-autopairs
try_loadstring("\27LJ\2\2<\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19core.autopairs\frequire\0", "config", "nvim-autopairs")

vim.cmd [[ packadd cmp-nvim-ultisnips ]]
time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file VBox lua require("packer.load")({'venn.nvim'}, { cmd = "VBox", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOutline lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutline", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file RnvimrToggle lua require("packer.load")({'rnvimr'}, { cmd = "RnvimrToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Pencil lua require("packer.load")({'vim-pencil'}, { cmd = "Pencil", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file WordyWordy lua require("packer.load")({'vim-wordy'}, { cmd = "WordyWordy", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file GrammarousCheck lua require("packer.load")({'vim-grammarous'}, { cmd = "GrammarousCheck", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ZenMode lua require("packer.load")({'zen-mode.nvim'}, { cmd = "ZenMode", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SnipRun lua require("packer.load")({'sniprun'}, { cmd = "SnipRun", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Bracey lua require("packer.load")({'bracey.vim'}, { cmd = "Bracey", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Glow lua require("packer.load")({'glow.nvim'}, { cmd = "Glow", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> d <cmd>lua require("packer.load")({'vim-surround'}, { keys = "d", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> g <cmd>lua require("packer.load")({'vim-caser'}, { keys = "g", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> c <cmd>lua require("packer.load")({'vim-surround'}, { keys = "c", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> y <cmd>lua require("packer.load")({'vim-surround'}, { keys = "y", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'vim-litecorrect', 'vim-prettier', 'vim-wordy', 'vim-pencil'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascriptreact ++once lua require("packer.load")({'emmet-vim', 'nvim-ts-autotag'}, { ft = "javascriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType css ++once lua require("packer.load")({'nvim-colorizer.lua'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'emmet-vim', 'nvim-colorizer.lua', 'nvim-ts-autotag'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'emmet-vim', 'nvim-colorizer.lua', 'nvim-ts-autotag'}, { ft = "html" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'nvim-lspinstall'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'toggleterm.nvim', 'barbar.nvim', 'dashboard-nvim', 'which-key.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'gitsigns.nvim', 'nvim-comment', 'numb.nvim', 'indent-blankline.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au WinScrolled * ++once lua require("packer.load")({'neoscroll.nvim'}, { event = "WinScrolled *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'emmet-vim', 'vim-snippets'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/css.vim]], true)
vim.cmd [[source /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/css.vim]]
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/css.vim]], false)
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/graphql.vim]], true)
vim.cmd [[source /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/graphql.vim]]
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/graphql.vim]], false)
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/html.vim]], true)
vim.cmd [[source /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/html.vim]]
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/html.vim]], false)
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/javascript.vim]], true)
vim.cmd [[source /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/javascript.vim]]
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/javascript.vim]], false)
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/json.vim]], true)
vim.cmd [[source /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/json.vim]]
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/json.vim]], false)
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/less.vim]], true)
vim.cmd [[source /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/less.vim]]
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/less.vim]], false)
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/lua.vim]], true)
vim.cmd [[source /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/lua.vim]]
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/lua.vim]], false)
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/markdown.vim]], true)
vim.cmd [[source /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/markdown.vim]]
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/markdown.vim]], false)
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/php.vim]], true)
vim.cmd [[source /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/php.vim]]
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/php.vim]], false)
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/ruby.vim]], true)
vim.cmd [[source /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/ruby.vim]]
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/ruby.vim]], false)
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/scss.vim]], true)
vim.cmd [[source /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/scss.vim]]
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/scss.vim]], false)
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/svelte.vim]], true)
vim.cmd [[source /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/svelte.vim]]
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/svelte.vim]], false)
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/typescript.vim]], true)
vim.cmd [[source /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/typescript.vim]]
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/typescript.vim]], false)
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/vue.vim]], true)
vim.cmd [[source /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/vue.vim]]
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/vue.vim]], false)
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/xml.vim]], true)
vim.cmd [[source /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/xml.vim]]
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/xml.vim]], false)
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/yaml.vim]], true)
vim.cmd [[source /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/yaml.vim]]
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier/ftdetect/yaml.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
