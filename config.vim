syntax enable
colorscheme nightfox
set encoding=UTF-8
filetype indent on
set tabstop=4
set shiftwidth=4
set linebreak
set ruler
set mouse=a
set spell
set cursorline
set hlsearch
" Keybindings Start
inoremap <silent> \\ <Esc>:Telescope<CR>
nnoremap <silent> \\ <Esc>:Telescope<CR>
inoremap <silent> <C-S> <Esc>:w<CR>
nnoremap <silent> <C-S> :w<CR>
" Keybindings END
lua << END
require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'everforest',
    component_separators = { left = 'ﲯ', right = 'ﲯ'},
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {
	    { 'mode', separator = { left = '' }, right_padding = 2 }
},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {'filesize'},
    lualine_b = {'pwd'},
    lualine_c = {'filename'},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
})
END
