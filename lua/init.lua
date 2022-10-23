--[[
MY NEOVIM LUA CONFIG!
]]
--
require("impatient")
local set = vim.opt
-- Basic Config
set.number = true
set.swapfile = false
set.background = "dark"
set.showmode = false
set.autoindent = true
set.expandtab = true
set.termguicolors = true
-- Plugins
return require("packer").startup(function(use)
	use({ "ckipp01/stylua-nvim" })
	use({
		"gelguy/wilder.nvim",
	})
	use("rcarriga/nvim-notify")
	use({
		"crusj/bookmarks.nvim",
		branch = "main",
		requires = { "kyazdani42/nvim-web-devicons" },
	})
	use("stevearc/dressing.nvim")
	use({
		"ziontee113/icon-picker.nvim",
	})
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup({})
		end,
	})
	use("lukas-reineke/indent-blankline.nvim")
	use({ "mrjones2014/legendary.nvim" })
	use({ "ellisonleao/glow.nvim" })
	use({
		"catppuccin/nvim",
		as = "catppuccin",
		config = function()
			vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
			require("catppuccin").setup()
			vim.api.nvim_command("colorscheme catppuccin")
		end,
	})
	--use 'numirias/semshi'
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	use("tjdevries/nlua.nvim")
	use({ "rafcamlet/nvim-luapad", requires = "antoinemadec/FixCursorHold.nvim" })
	use("rafamadriz/friendly-snippets")
	use("preservim/nerdcommenter")
	use({
		"s1n7ax/nvim-terminal",
		config = function()
			vim.o.hidden = true
			require("nvim-terminal").setup()
		end,
	})
	use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })
	use("glepnir/dashboard-nvim")
	use("norcalli/nvim-colorizer.lua")
	use("wbthomason/packer.nvim")
	use("tpope/vim-fugitive")
	use("kyazdani42/nvim-web-devicons")
	use("907th/vim-auto-save")
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("morhetz/gruvbox")
	use({ "neoclide/coc.nvim", branch = "release" })
	use("pangloss/vim-javascript") -- JavaScript support
	use("leafgarland/typescript-vim") -- TypeScript syntax
	use("maxmellon/vim-jsx-pretty") -- JS and JSX syntax
	use("jparise/vim-graphql")
	use("tjdevries/colorbuddy.nvim")
	use("LucHermitte/lh-cpp")
	use({ "rktjmp/lush.nvim" })
	use("dense-analysis/ale")
	-- Lua
	use({
		"ahmedkhalf/project.nvim",
		config = function()
			require("project_nvim").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})
	use("EdenEast/nightfox.nvim") -- Packer
	use("drewtempelmeyer/palenight.vim")
	use({
		"romgrk/barbar.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	})
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})
	use("ryanoasis/vim-devicons")
	use("mattn/emmet-vim")
	use("yuezk/vim-js")
	use("ervandew/supertab")
	use("tpope/vim-surround")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
	use("junegunn/fzf")
	use("jbgutierrez/vim-better-comments")
	use("lewis6991/impatient.nvim")
	use("dstein64/vim-startuptime")
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icons
		},
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	})
	use("euclidianAce/BetterLua.vim")
	-- Lua
	use({
		"folke/persistence.nvim",
		event = "BufReadPre", -- this will only start session saving when an actual file was opened
		module = "persistence",
		config = function()
			require("persistence").setup()
		end,
	})
end)
-- :TSInstall python json javascript typescript vim lua c cpp markdown html scss jsonc yaml toml
