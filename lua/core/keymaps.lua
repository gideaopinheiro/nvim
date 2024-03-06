vim.g.mapleader = '\\'
vim.g.maplocalleader = '\\'

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<space>h', ':nohlsearch<cr>') -- no highlight
vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end) -- format text
vim.keymap.set('n', '<space>Q', ':qa<cr>') -- close nvim
vim.keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end) -- visualize diagnostic
vim.keymap.set('n', '<space>c', ":bd<CR>", { noremap = true, silent = true}) -- Close buffer

vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<C-h>', ':wincmd h<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', ':wincmd l<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', ':wincmd j<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', ':wincmd k<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<cr>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>sr', ":lua require('telescope').extensions.git_worktree.git_worktrees()<cr>", { silent = true })
vim.keymap.set('n', '<leader>sR', ":lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>",
  { silent = true })

vim.keymap.set('n', '<A-k>', ':m .+1<CR>==') -- move linen up
vim.keymap.set('n', '<A-j>', ':m .-2<CR>==') -- move line down
