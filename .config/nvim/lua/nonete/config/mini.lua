-- Inicializa mini.deps (descargará mini.nvim si no está)
require("mini.deps").setup({
	path = {
		package = "/home/nonegod/.local/share/nvim/site/pack/custom_mini",
	},
})

-- Usa mini.deps para cargar plugins
local add = require("mini.deps").add

add("echasnovski/mini.nvim")

-- Ahora puedes requerir módulos

require("mini.clue").setup({
	triggers = {
		-- Mostrar ayuda cuando empiezo con estas teclas
		{ mode = "n", keys = "<Leader>" },
		{ mode = "n", keys = "g" },
		{ mode = "n", keys = "z" },
		{ mode = "x", keys = "g" },
		{ mode = "x", keys = "z" },
	},
	clues = {
		-- Añade sugerencias para los comandos estándar
		require("mini.clue").gen_clues.builtin_completion(),
		require("mini.clue").gen_clues.g(),
		require("mini.clue").gen_clues.marks(),
		require("mini.clue").gen_clues.registers(),
		require("mini.clue").gen_clues.windows(),
		require("mini.clue").gen_clues.z(),
	},
	window = {
		config = {
			width = "auto",
		},
	},
})
require("mini.hipatterns").setup({})
require("mini.map").setup({})
require("mini.indentscope").setup({})

require("mini.starter").setup({
	evaluate_single = true,
	header = table.concat({
		"         ███╗   ██╗ ██████╗ ███╗   ██╗███████╗██╗   ██╗██╗███╗   ███╗         ",
		"         ████╗  ██║██╔═══██╗████╗  ██║██╔════╝██║   ██║██║████╗ ████║         ",
		"         ██╔██╗ ██║██║   ██║██╔██╗ ██║█████╗  ██║   ██║██║██╔████╔██║         ",
		"         ██║╚██╗██║██║   ██║██║╚██╗██║██╔══╝  ╚██╗ ██╔╝██║██║╚██╔╝██║         ",
		"         ██║ ╚████║╚██████╔╝██║ ╚████║███████╗ ╚████╔╝ ██║██║ ╚═╝ ██║         ",
		"         ╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝  ╚═══╝  ╚═╝╚═╝     ╚═╝         ",
		"                            ⚡ welcome to nonevim ⚡                          ",
	}, "\n"),
})
