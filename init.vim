luafile ~/AppData/Local/nvim/lua/init.lua
syntax enable
colorscheme catppuccin
Catppuccin frappe
set encoding=UTF-8
filetype indent on
filetype plugin on
set tabstop=4
set shiftwidth=4
set linebreak
set ruler
set mouse=a
set spell
set cursorline
set hlsearch
set number
"set noshowmode
hi DashboardHeader guifg=#e8aeb7
let g:python3_host_prog = 'C:\Users\hp\AppData\Local\Programs\Python\Python310\python.exe'
let g:indentLine_fileTypeExclude = ['dashboard']
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
lua require("nvim-tree").setup()
lua require('colorizer').setup()
lua require("bookmarks").setup()
lua require("icon-picker").setup({ disable_legacy_commands = true })
lua require('telescope').load_extension('projects')
lua require("luasnip.loaders.from_vscode").lazy_load()
" Keybindings Start
inoremap <silent> \\ <CMD>:Telescope<CR>
nnoremap <silent> \\ <CMD>:Telescope<CR>
inoremap <silent> <C-S> <CMD>:w<CR>
nnoremap <silent> <C-S> :w<CR>
inoremap <silent> <C-Y> <CMD>:redo<CR>
inoremap <silent> <C-Z> <CMD>:undo<CR>
nnoremap <silent> <C-P> <CMD>:Legendary<CR>
" Keybindings END
lua << END
require("mason").setup()
require("mason-lspconfig").setup()
local home = os.getenv('HOME')
local db = require('dashboard')
db.custom_header = {
        '',
            '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⣤⣤⣄⣀⣆⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
                '⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⡿⢛⣻⣿⠳⣽⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀',
                    '⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣼⣿⣿N⣿⣿⣿⣷⣄⡀⠀⠀⠀⠀⠀⠀',
                        '⠀⠀⠀⠀⠀⣰⣿⣿⣿⡿⣻⢟⣼⣿⣿⠟⣩E⣿⣿⣿⣿⣮⣿⣆⡀⠀⠀⠀⠀',
                            '⠀⠀⠀⠀⣰⣿⣿⢋⡿⠑⠋⣾⣿⣿⣇⠳⢿O⣿⠹⠿⢿⣿⣻⣿⡿⠋⠀⠀⠀',
                                '⠀⠀⠀⣰⣟⡽⠷⠋⠀⠀⠀⠇⣿⣿⣿⣿LAND⣶⡄⠾⠛⠙⣷⣄⡀⠀⠀',
                                    '⠀⢀⡾⠛⠉⠀⠀⠀⠀⠀⠀⠀⠻⡹⣿⡿⢿⣿⣿⣿⣿⣿⣿⣶⣆⡘⠷⣉⠆⠀',
                                        '⠐⠉⠀⠀⠀⠀⠀⠀⢀⣴⣶⣶⣶⣧⣝⣷⣄⠈⠙⢿⡏⢻⢻⢻⣿⣷⡀⠈⠑⠄',
                                            '⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⠋⠀⠀⠉⠛⢿⣷⣄⡀⠀⠹⠀⠀⣼⣿⡟⡇⠀⠀⠀',
                                                '⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣧⡀⠀⠀⢀⡠⣬⣿⣿⣿⣶⣿⣿⣿⣿⠇⠃⠀⠀⠀',
                                                    '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠿⢷⣶⣦⣬⣿⣦⣌⠭⠿⠟⠋⢀⠏⠀⠀⠀⠀⠀',
                                                        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠒⠛⠛⠿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀',
                                                            '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠶⠄⠀⠀⠀⠀⠀',
                                                                '',
}
db.custom_center = {
      {
	icon = '  ',
        desc = 'Recent Projects                  ',
      	action ='Telescope projects'
    },
	{
	icon = '  ',
        desc = 'NeoVim Configuration                  ',
      	action ='cd ~/AppData/Local/nvim | :Telescope fd'
    },
    {
            icon = '  ',
            desc = 'Change Colorscheme                  ',
            action = 'Telescope colorscheme'
    },
    {
            icon = "﬌ ",
            desc = "View Current Folder                  ",
            action = 'Telescope fd'
}
    }
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local modes = {'n', 'v'} -- normal and visual mode
for i in pairs(modes) do
    map(modes[i], '<C-_>', ':call nerdcommenter#Comment(0, "toggle")<CR>' , opts)
end
local lspconfig = require('lspconfig')
lspconfig.sumneko_lua.setup({})
END
