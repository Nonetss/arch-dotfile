return {
	--  "Exafunction/windsurf.vim",
	--  config = function()
	--    -- Change '<C-g>' here to any keycode you like.
	--    vim.keymap.set("i", "<C-g>", function()
	--      return vim.fn["codeium#Accept"]()
	--    end, { expr = true, silent = true })
	--    vim.keymap.set("i", "<c-;>", function()
	--      return vim.fn["codeium#CycleCompletions"](1)
	--    end, { expr = true, silent = true })
	--    vim.keymap.set("i", "<c-,>", function()
	--      return vim.fn["codeium#CycleCompletions"](-1)
	--    end, { expr = true, silent = true })
	--    vim.keymap.set("i", "<c-x>", function()
	--      return vim.fn["codeium#Clear"]()
	--    end, { expr = true, silent = true })
	--  end,

	"github/copilot.vim",
	event = "InsertEnter",
	config = function()
		vim.keymap.set("i", "<C-Right>", 'copilot#Accept("<CR>")', { expr = true, silent = true })
		vim.keymap.set("i", "<C-Left>", "copilot#Dismiss()", { expr = true, silent = true })
	end,
}
