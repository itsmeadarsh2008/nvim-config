--[[
MY NEOVIM LUA CONFIG!
]] --
vim.cmd('source ~/AppData/Local/nvim/config.vim')
vim.cmd('lua print("Don\'t Say Hello, Use Ahoy! Hoy!")')
local set = vim.opt
-- Basic Config
set.number = true
set.swapfile = false
set.background = 'dark'
-- Plugins
return require("packer").startup(
    function(use)
        use "wbthomason/packer.nvim"
        use "tpope/vim-fugitive"
        use {
            "nvim-lualine/lualine.nvim",
            requires = {"kyazdani42/nvim-web-devicons", opt = true}
        }
        use "ap/vim-css-color"
        use "kyazdani42/nvim-web-devicons"
        use "preservim/nerdtree"
        use "907th/vim-auto-save"
        use {
            "nvim-telescope/telescope.nvim",
            tag = "0.1.0",
            -- or                            , branch = '0.1.x',
            requires = {{"nvim-lua/plenary.nvim"}}
        }
        use "morhetz/gruvbox"
        use {"neoclide/coc.nvim", branch = "release"}
        use "pangloss/vim-javascript" -- JavaScript support
        use "leafgarland/typescript-vim" -- TypeScript syntax
        use "maxmellon/vim-jsx-pretty" -- JS and JSX syntax
        use "jparise/vim-graphql"
        use "LucHermitte/lh-cpp"
	use "dense-analysis/ale"
	use "EdenEast/nightfox.nvim" -- Packer
	use 'drewtempelmeyer/palenight.vim'
	use {
		  'romgrk/barbar.nvim',
		    requires = {'kyazdani42/nvim-web-devicons'}
	    }
	use 'ryanoasis/vim-devicons'
	use 'tiagofumo/vim-nerdtree-syntax-highlight'
    end
)
