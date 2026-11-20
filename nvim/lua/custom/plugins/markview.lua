vim.pack.add { 'https://github.com/OXY2DEV/markview.nvim' }

require('markview').setup {
  preview = {
    modes = { 'n', 'no', 'c' },
    hybrid_modes = { 'i' },
  },
}

vim.keymap.set('n', '<leader>mt', '<cmd>Markview Toggle<cr>', { desc = '[M]arkview [T]oggle' })
