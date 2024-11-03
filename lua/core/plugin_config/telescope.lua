local builtin = require('telescope.builtin')
local telescope = require('telescope')

vim.keymap.set('n', '<space>f', builtin.find_files, { desc = "Find files" })
vim.keymap.set('n', '<Space>t', builtin.live_grep, { desc = "Find text" })

telescope.setup {
  pickers = {
    colorscheme = {
      enable_preview = true
    }
  },
  sort_mru = true,
}
