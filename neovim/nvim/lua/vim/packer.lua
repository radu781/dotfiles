-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "catppuccin/nvim", as = "catppuccin" })
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
		},
	})
	use({
		"folke/trouble.nvim",
		requires = {
			{ "nvim-tree/nvim-web-devicons" },
		},
	})
	use({ "nvim-tree/nvim-web-devicons" })
	use({ "tpope/vim-fugitive" })
	use({ "lewis6991/gitsigns.nvim" })
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})
	use({
		"folke/which-key.nvim",
	})
	use({
		"folke/neodev.nvim",
	})
	use({
		"RRethy/vim-illuminate",
	})
	use({
		"m4xshen/autoclose.nvim",
	})
	use({
		"mfussenegger/nvim-dap",
	})
	use({
		"mfussenegger/nvim-dap-python",
	})
	use({
		"rcarriga/nvim-dap-ui",
	})
	use({
		"simrat39/rust-tools.nvim",
	})
	use({
		"lvimuser/lsp-inlayhints.nvim",
	})
	use({
		"tpope/vim-commentary",
	})
	use({
		"stevearc/oil.nvim",
		config = function()
			require("oil").setup()
		end,
	})
	use({ "kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async" })
	use({
		"nvim-neotest/neotest",
		requires = {
			"nvim-lua/plenary.nvim",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			"rouge8/neotest-rust",
			"nvim-neotest/neotest-plenary",
			"alfaix/neotest-gtest",
		},
	})
	use({
		"alfaix/neotest-gtest",
	})
	use({
		"nvim-neotest/neotest-plenary",
	})
	use({
		"nvim-treesitter/nvim-treesitter-context",
	})
	use({
		"andweeb/presence.nvim",
	})
	use({
		"saecki/crates.nvim",
	})
	use({
		"ray-x/lsp_signature.nvim",
	})
	use({
		"nvim-neotest/nvim-nio",
	})
	use("sindrets/diffview.nvim")
	use("j-hui/fidget.nvim")
	use("dart-lang/dart-vim-plugin")
	use("stevearc/dressing.nvim")
	use({
		"akinsho/flutter-tools.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim",
		},
	})
	use("natebosch/vim-lsc")
	use("natebosch/vim-lsc-dart")
	use("stevearc/conform.nvim")
	use("onsails/lspkind.nvim")
	use("michaelrommel/nvim-silicon")
	use("folke/todo-comments.nvim")
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})
	use("simnalamburt/vim-mundo")
	use({
		"Jezda1337/nvim-html-css",
		requires = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-lua/plenary.nvim",
		},
	})
    use({
        "OXY2DEV/markview.nvim",
        requires = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons"
        }
    })
    use("shellRaining/hlchunk.nvim")
    use("rachartier/tiny-code-action.nvim")
end)
