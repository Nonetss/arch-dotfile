-- Configuración para ejecutar RustFmt al guardar archivos .rs
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.rs",
	callback = function()
		vim.cmd("RustFmt")
	end,
})
