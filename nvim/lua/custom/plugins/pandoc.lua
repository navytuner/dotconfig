vim.api.nvim_create_user_command('PandocExport', function(opts)
  local fmt = opts.args ~= '' and opts.args or 'pdf'
  local input = vim.fn.expand '%:p'
  if input == '' then
    vim.notify('No file in this buffer', vim.log.levels.ERROR)
    return
  end
  local output = vim.fn.expand '%:p:r' .. '.' .. fmt
  vim.notify('pandoc: exporting → ' .. vim.fn.fnamemodify(output, ':t'))
  vim.system({ 'pandoc', input, '-o', output }, { text = true }, function(res)
    vim.schedule(function()
      if res.code == 0 then
        vim.notify('Exported: ' .. output, vim.log.levels.INFO)
      else
        vim.notify('pandoc failed:\n' .. (res.stderr or ''), vim.log.levels.ERROR)
      end
    end)
  end)
end, {
  nargs = '?',
  complete = function() return { 'pdf', 'docx', 'html', 'epub' } end,
  desc = 'Export current file via pandoc (default: pdf)',
})

vim.keymap.set('n', '<leader>mp', '<cmd>PandocExport pdf<cr>', { desc = '[M]arkdown → [P]DF (pandoc)' })
