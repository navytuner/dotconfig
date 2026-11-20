vim.pack.add { 'https://github.com/sainnhe/gruvbox-material' }

vim.o.background = 'dark'
vim.g.gruvbox_material_background = 'hard' -- 'hard' | 'medium' | 'soft'
vim.g.gruvbox_material_foreground = 'material' -- 'material' | 'mix' | 'original'
vim.g.gruvbox_material_enable_italic = 1
vim.g.gruvbox_material_better_performance = 1

vim.cmd.colorscheme 'gruvbox-material'
