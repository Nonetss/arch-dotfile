return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		-- importar plugin nvim-treesitter
		local treesitter = require("nvim-treesitter.configs")

		-- configurar treesitter
		treesitter.setup({
			-- enable syntax highlighting
			highlight = {
				enable = true,
			},
			-- enable indentation
			indent = { enable = true },
			-- enable autotagging (w/ nvim-ts-autotag plugin)
			autotag = {
				enable = true,
			},
			-- ensure these language parsers are installed
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"prisma",
				"markdown",
				"markdown_inline",
				"svelte",
				"graphql",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"query",
				"vimdoc",
				"c",
			},
			-- enable folding
			fold = {
				enable = true,
				disable = {},
			},
			-- enable incremental selection
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})

		-- Configuración global de plegado en Neovim
		vim.o.foldmethod = "expr"
		vim.o.foldexpr = "nvim_treesitter#foldexpr()"
		vim.o.foldlevel = 99 -- No plegar automáticamente

		-- Habilitar el uso del ratón en todas las áreas
		vim.o.mouse = "a"

		-- Mapear Ctrl + clic izquierdo para plegar/desplegar con el ratón
		vim.api.nvim_set_keymap("n", "<C-LeftMouse>", ":silent! normal! za<CR>", { noremap = true, silent = true })
	end,
}
