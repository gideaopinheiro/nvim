local builtin = require('telescope.builtin')
local telescope = require('telescope')

vim.keymap.set('n', '<space>f', builtin.find_files, {})
vim.keymap.set('n', '<Space>t', builtin.live_grep, {})

telescope.setup {
  pickers = {
    colorscheme = {
      enable_preview = true
    }
  }
}
