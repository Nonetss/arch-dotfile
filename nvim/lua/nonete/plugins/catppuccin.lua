return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha", -- Opciones: latte, frappe, macchiato, mocha
			background = { -- :h background
				light = "latte",
				dark = "mocha",
			},
			transparent_background = false,
			integrations = {
				cmp = true,
				nvimtree = true,
				treesitter = true,
				mason = true,
				bufferline = true,
			},
		})

		-- Configurar el tema
		vim.cmd.colorscheme("catppuccin")
	end,
}
