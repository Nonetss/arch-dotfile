require("nonete.core")
require("nonete.lazy")
require("nonete.config")

vim.o.background = "dark"
vim.cmd.colorscheme("catppuccin-frappe")

--vim.api.nvim_create_autocmd("ColorScheme", {
--  pattern = "*",
--  callback = function()
--    vim.cmd([[highlight SpellBad cterm=underline ctermfg=Red guibg=LightYellow gui=underline guifg=DarkRed]])
--    vim.cmd([[highlight SpellCap cterm=underline ctermfg=Yellow gui=underline guifg=Gold]])
--    vim.cmd([[highlight SpellRare cterm=underline ctermfg=Magenta gui=underdotted guifg=MediumPurple]])
--    vim.cmd([[highlight SpellLocal cterm=underline ctermfg=Cyan gui=underdotted guifg=SkyBlue]])
--  end,
--})
