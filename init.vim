luafile ~/AppData/Local/nvim/lua/init.lua
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
set number
set noshowmode
hi DashboardHeader guifg=#FF9B71
lua require("nvim-tree").setup()
lua require('colorizer').setup()
lua require('telescope').load_extension('projects')
lua require("luasnip.loaders.from_vscode").lazy_load()
" Keybindings Start
inoremap <silent> \\ <CMD>:Telescope<CR>
nnoremap <silent> \\ <CMD>:Telescope<CR>
inoremap <silent> <C-S> <CMD>:w<CR>
nnoremap <silent> <C-S> :w<CR>
inoremap <silent> <C-Y> <CMD>:redo<i><CR>
inoremap <silent> <C-Z> <CMD>:undo<i><CR>
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
local home = os.getenv('HOME')
local db = require('dashboard')
db.custom_center = {
      {
	icon = ' ',
        desc = 'Recent Projects                  ',
      	action ='Telescope projects'
    },
	{
	icon = ' ',
        desc = 'NeoVim Configuration                  ',
      	action ='cd ~/AppData/Local/nvim | :Telescope fd'
    },
    {
            icon = '  ',
            desc = 'Change Colorscheme                  ',
            action = 'Telescope colorscheme'
    }
}
db.custom_header = {
        '',
            '   │                                     ',
                '   │        ▄▄   ▄▄   ▄▄   ▄▄       │    ',
                    '   ▌        ▒▒   ▒▒   ▒▒   ▒▒       ▌    ',
                        '   ▌      ▄▀█▀█▀█▀█▀█▀█▀█▀█▀█▀▄     ▌    ',
                            '   ▌    ▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄▀▄   ▋    ',
                                '▀██████████████████████████████████████▄ ',
                                    '  ▀███████████████████████████████████▀  ',
                                        '     ▀██████████████████████████████▀    ',
                                            '▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒',
                                                '▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒',
                                                    '▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒',
                                                        '',
                                                        }
END
