return {
	"2kabhishek/termim.nvim",
	cmd = { "Fterm", "FTerm", "Sterm", "STerm", "Vterm", "VTerm" },
	keys = {
		{ "<leader>tt", "<cmd>Sterm<cr>", desc = "Open terminal in new horizontal split" },
		{ "<leader>tv", "<cmd>Vterm<cr>", desc = "Open terminal in new vertical split" },
	},
}
