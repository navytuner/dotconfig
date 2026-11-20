vim.pack.add {
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/akinsho/bufferline.nvim',
}

require('bufferline').setup {
  options = {
    diagnostics = 'nvim_lsp',
    show_buffer_close_icons = true,
    separator_style = 'slant',
    offsets = {
      { filetype = 'neo-tree', text = 'File Explorer', separator = true, text_align = 'left' },
    },
  },
}

local map = vim.keymap.set
map('n', '<S-l>', '<cmd>BufferLineCycleNext<cr>', { desc = 'Next buffer tab' })
map('n', '<S-h>', '<cmd>BufferLineCyclePrev<cr>', { desc = 'Prev buffer tab' })
map('n', '<leader>bp', '<cmd>BufferLinePick<cr>', { desc = '[B]uffer [P]ick' })
map('n', '<leader>bd', '<cmd>bdelete<cr>', { desc = '[B]uffer [D]elete' })
map('n', '<leader>bc', '<cmd>BufferLinePickClose<cr>', { desc = '[B]uffer [C]lose' })
