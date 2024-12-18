return {
	-- Plugin: obsidian.nvim
	-- URL: https://github.com/epwalsh/obsidian.nvim
	-- Description: A Neovim plugin for integrating with Obsidian, a powerful knowledge base.
	"epwalsh/obsidian.nvim",
	version = "*", -- Use the latest stable release.

	dependencies = {
		-- Dependency: plenary.nvim
		"nvim-lua/plenary.nvim",
	},

	keys = {
		-- Navegar y seguir enlaces
		{
			"<leader>of",
			function()
				require("obsidian").util.gf_passthrough()
			end,
			desc = "Follow link under cursor",
		},

		-- Alternar estado de checkboxes
		{
			"<leader>od",
			function()
				require("obsidian").util.toggle_checkbox()
			end,
			desc = "Toggle checkbox state",
		},

		-- Crear una nueva nota para Newsletter-Issue
		{
			"<leader>onn",
			function()
				require("obsidian").commands.new_note("Newsletter-Issue")
			end,
			desc = "Create new note for Newsletter-Issue",
		},

		-- Insertar plantilla Newsletter-Issue
		{
			"<leader>ont",
			function()
				require("obsidian").util.insert_template("Newsletter-Issue")
			end,
			desc = "Insert template Newsletter-Issue",
		},

		-- Abrir la nota diaria
		{ "<leader>ot", "<cmd>ObsidianToday<CR>", desc = "Open today's note" },

		-- Buscar en las notas
		{ "<leader>os", "<cmd>ObsidianSearch<CR>", desc = "Search notes with Telescope" },

		-- Crear una nueva nota
		{ "<leader>on", "<cmd>ObsidianNew<CR>", desc = "Create a new blank note" },
	},

	opts = {
		-- Workspaces configurados para Obsidian
		workspaces = {
			{ name = "work", path = "/home/nonelap/Notes/work" },
			{ name = "fisica", path = "/home/nonelap/Notes/fisica" },
			{ name = "personal", path = "/home/nonelap/Notes/personal" },
			{ name = "programacion", path = "/home/nonelap/Notes/programacion" },
		},

		-- Configuración de autocompletado
		completion = {
			nvim_cmp = true, -- Integración con nvim-cmp
			min_chars = 2, -- Mínimo de caracteres para activar el autocompletado
		},

		-- Subdirectorio para notas nuevas y adjuntos
		notes_subdir = "limbo",
		new_notes_location = "limbo",
		attachments = {
			img_folder = "files", -- Carpeta para adjuntar imágenes
		},

		-- Configuración para notas diarias
		daily_notes = {
			folder = "Daily", -- Carpeta para notas diarias
			template = "note", -- Plantilla para notas diarias
		},

		-- Función para generar frontmatter en las notas
		note_frontmatter_func = function(note)
			local out = { id = note.id, aliases = note.aliases, tags = note.tags }
			if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
				for k, v in pairs(note.metadata) do
					out[k] = v
				end
			end
			return out
		end,

		-- Función para generar IDs únicos para notas
		note_id_func = function(title)
			local suffix = ""
			if title ~= nil then
				suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
			else
				for _ = 1, 4 do
					suffix = suffix .. string.char(math.random(65, 90))
				end
			end
			return tostring(os.time()) .. "-" .. suffix
		end,

		-- Configuración de plantillas
		templates = {
			subdir = "templates", -- Subdirectorio para plantillas
			date_format = "%Y-%m-%d-%a", -- Formato de fecha para plantillas
			gtime_format = "%H:%M", -- Formato de hora para plantillas
			tags = "", -- Etiquetas predeterminadas para plantillas
		},
	},
}
