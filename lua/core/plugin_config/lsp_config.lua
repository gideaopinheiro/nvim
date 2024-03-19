require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { 'lua_ls', 'elixirls', 'tsserver' }
})
local lsp = vim.lsp

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require('lspconfig').elixirls.setup {
  cmd = { vim.fn.expand("~/.bin/elixir-ls/language_server.sh") },
  on_attach = on_attach,
  capabilities = capabilities
}

require('lspconfig').tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

lsp.handlers["textDocument/hover"] = lsp.with(vim.lsp.handlers.hover, {
  border = "rounded"
})
