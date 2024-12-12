return {
	"brenoprata10/nvim-highlight-colors",
	cmd = { "HighlightColors" },
	config = function()
		vim.opt.termguicolors = true
		require("nvim-highlight-colors").setup({
			enable_named_colors = true,
		})
	end,
}
