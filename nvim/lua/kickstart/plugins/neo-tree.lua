-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

vim.pack.add {
  { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range '*' },
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
}

vim.keymap.set('n', '\\', '<Cmd>Neotree reveal<CR>', { desc = 'NeoTree reveal', silent = true })

require('neo-tree').setup {
  filesystem = {
    -- Don't let neo-tree auto-hijack directory buffers (the source of the
    -- E95 "Buffer with this name already exists" race). Open it with `\`.
    hijack_netrw_behavior = 'disabled',
    -- Show dotfiles by default (toggle inside the tree with `H`).
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = true, -- keep node_modules/.git etc. out; set false to show those too
    },
    window = {
      mappings = {
        ['\\'] = 'close_window',
      },
    },
  },
}
