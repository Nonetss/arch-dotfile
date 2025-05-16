-- Configuración global para habilitar el corrector ortográfico en español
vim.opt.spelllang = "es" -- Establecer el idioma del corrector (español)
vim.opt.spell = true -- Habilitar el corrector ortográfico
vim.opt.complete:append("kspell") -- Habilitar autocompletado basado en palabras detectadas por el corrector

-- Vimtex
-- Activa la detección de archivos, plugins e indentación
vim.cmd("filetype plugin indent on")

-- Activa la sintaxis
vim.cmd("syntax enable")

-- Configura el visor de PDFs
vim.g.vimtex_view_method = "zathura"

-- Configura el compilador (cambia latexmk por latexrun)
vim.g.vimtex_compiler_method = "pdflatex"
