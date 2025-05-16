-- Configuración global para habilitar el corrector ortográfico en español
vim.opt.spelllang = "es" -- Establecer el idioma del corrector (español)
vim.opt.spell = true -- Habilitar el corrector ortográfico
vim.opt.complete:append("kspell") -- Habilitar autocompletado basado en palabras detectadas por el corrector
