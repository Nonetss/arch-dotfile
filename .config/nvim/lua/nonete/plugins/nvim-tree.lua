return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"echasnovski/mini.icons", -- aquí está la clave
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- Carga íconos de mini.icons

		-- Usa los íconos en neo-tree
		require("neo-tree").setup({
			filtered_items = {
				visible = true, -- Muestra todos los archivos, incluidos los ocultos
				hide_dotfiles = false,
				hide_gitignored = false,
				always_show = {}, -- Aquí puedes forzar archivos a mostrarse
			},
			use_libuv_file_watcher = true,
			components = {
				-- Muestra la barra de búsqueda todo el rato
				filtered_items = true,
			},
			window = {
				width = 35,
				mappings = {
					["<space>"] = "toggle_node",
					["<cr>"] = "open",
					["S"] = "open_split",
					["s"] = "open_vsplit",
				},
			},
			default_component_configs = {
				indent = {
					with_markers = true,
					indent_size = 2,
				},
			},
		})

		-- Keymaps
		local keymap = vim.keymap.set
		keymap("n", "<leader>ee", "<cmd>Neotree toggle<CR>", { desc = "Abrir/cerrar Neo-tree" })
		keymap("n", "<leader>ef", "<cmd>Neotree reveal<CR>", { desc = "Abrir Neo-tree en archivo actual" })
		keymap("n", "<leader>er", "<cmd>Neotree refresh<CR>", { desc = "Refrescar Neo-tree" })
		keymap("n", "<leader>ec", "<cmd>Neotree close<CR>", { desc = "Cerrar Neo-tree" })
	end,
}
