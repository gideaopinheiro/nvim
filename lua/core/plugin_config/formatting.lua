local conform = require("conform")

conform.setup({
  event = { "BufReadPre", "BufNewFile" },
  formatters_by_ft = {
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },
    graphql = { "prettier" },
    lua = { "stylua" },
  },
  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 500
  },
})

vim.keymap.set({ "n", "v" }, "<leader>f", function()
  conform.format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 500
  })
end, { desc = "Format file or range (in visual mode)" })
