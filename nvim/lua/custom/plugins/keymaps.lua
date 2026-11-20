local map = vim.keymap.set

-- Save file with Ctrl+S (VSCode muscle memory), in normal AND insert mode
map({ 'n', 'i' }, '<C-s>', '<cmd>write<CR><Esc>', { desc = 'Save file' })

-- Clear search highlight with <leader>n
map('n', '<leader>n', '<cmd>nohlsearch<CR>', { desc = 'Clear search highlight' })

map('n', '<C-j>', '10j')
map('v', '<C-j>', '10j')
map('n', '<C-k>', '10k')
map('v', '<C-k>', '10k')

-- Telescope: fuzzy searches (work everywhere)
local builtin = require 'telescope.builtin'
map('n', '<leader>p', builtin.find_files, { desc = 'Find files' })
map('n', '<leader>g', builtin.live_grep, { desc = 'Grep in project' })

-- LSP code navigation (need clangd/LSP attached to the file)
map('n', 'gd', builtin.lsp_definitions, { desc = 'Goto definition' })
map('n', 'gr', builtin.lsp_references, { desc = 'Goto references' })
map('n', 'gi', builtin.lsp_implementations, { desc = 'Goto implementation' })
map('n', 'gt', builtin.lsp_type_definitions, { desc = 'Goto type definition' })
map('n', 'K', vim.lsp.buf.hover, { desc = 'Hover docs' })
map('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Rename symbol' })
map('n', '<leader>t', builtin.lsp_dynamic_workspace_symbols, { desc = 'Find symbol in workspace' })
-- map('n', '<leader>e', builtin.lsp_document_symbols, { desc = 'Find symbol in file' })
