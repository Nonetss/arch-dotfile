vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.md",
	callback = function()
		vim.cmd("w!")
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.cmd([[syn match markdownTable '|.*|']])
		vim.opt_local.spell = true
	end,
})
