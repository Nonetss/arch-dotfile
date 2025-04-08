return {
	"github/copilot.vim",
	event = "InsertEnter",
	config = function()
		vim.g.copilot_no_tab_map = true
		vim.g.copilot_assume_mapped = true
		vim.keymap.set("i", "<C-Right>", 'copilot#Accept("<CR>")', { expr = true, silent = true })
		vim.keymap.set("i", "<C-Left>", "copilot#Dismiss()", { expr = true, silent = true })
	end,
}
