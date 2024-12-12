vim.api.nvim_create_augroup("TexAndMarkdown", { clear = true })

-- Autocomando para archivos .tex
vim.api.nvim_create_autocmd("FileType", {
	group = "TexAndMarkdown",
	pattern = "tex",
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.linebreak = true
	end,
})

-- Autocomando para archivos .md
vim.api.nvim_create_autocmd("FileType", {
	group = "TexAndMarkdown",
	pattern = "markdown",
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.linebreak = true
	end,
})
