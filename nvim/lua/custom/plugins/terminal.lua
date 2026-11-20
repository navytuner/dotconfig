vim.pack.add { 'https://github.com/akinsho/toggleterm.nvim' }

require('toggleterm').setup {
  open_mapping = [[<c-\>]],
  direction = 'float',
  float_opts = { border = 'curved' },
  start_in_insert = true,
}

vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm<cr>', { desc = '[T]oggle [T]erminal' })
vim.keymap.set('n', '<leader>tf', '<cmd>ToggleTerm direction=float<cr>', { desc = '[T]erminal [F]loat' })
vim.keymap.set('n', '<leader>th', '<cmd>ToggleTerm direction=horizontal size=15<cr>', { desc = '[T]erminal [H]orizontal' })

vim.api.nvim_create_autocmd('TermOpen', {
  pattern = 'term://*toggleterm#*',
  callback = function()
    local opts = { buffer = 0 }
    vim.keymap.set('t', '<esc><esc>', [[<C-\><C-n>]], opts)
  end,
})
