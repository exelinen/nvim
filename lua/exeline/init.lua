require("exeline.remap")
require("exeline.lazy")
require("exeline.set")

require("lazy").setup({
	{
		"nvim-telescope/telescope.nvim", branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	{
    		"nvim-treesitter/nvim-treesitter",
    		build = ":TSUpdate",
    		config = function () 
      			local configs = require("nvim-treesitter.configs")

      			configs.setup({
          			ensure_installed = { "c", "lua", "vim", "vimdoc", "jsdoc", "svelte", "css", "javascript", "html", "php" },
          			sync_install = false,
          			highlight = { enable = true },
          			indent = { enable = true },
        		})
    		end
 	},
	{
		"theprimeagen/harpoon"
	},
	{
		"mbbill/undotree"
	},
	{
		"tpope/vim-fugitive"
	},
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		dependencies = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
}
})
