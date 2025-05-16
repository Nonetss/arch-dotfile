-- Crear un grupo para autocmds relacionados con archivos .tex y .md
vim.api.nvim_create_augroup("TexAndMarkdown", { clear = true })

-- Autocomando para archivos .md

vim.api.nvim_create_autocmd("FileType", {
	group = "TexAndMarkdown",
	pattern = "markdown",
	callback = function()
		-- vim.opt_local.wrap = true
		vim.opt_local.spell = true
		vim.opt_local.spelllang = "es"
		vim.opt_local.complete:append("kspell")

		-- Atajos para navegar y corregir errores ortográficos
		vim.keymap.set("n", "]s", "]s", { buffer = true, desc = "Siguiente error ortográfico" })
		vim.keymap.set("n", "[s", "[s", { buffer = true, desc = "Anterior error ortográfico" })
		vim.keymap.set("n", "z=", "z=", { buffer = true, desc = "Corregir palabra" })
	end,
})
