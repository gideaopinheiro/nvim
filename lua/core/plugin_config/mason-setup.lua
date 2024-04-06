require("mason").setup({
  ui = {
    icons = {
      package_isntalled = ">",
      package_pending = ">",
      package_uninstalled = ">",
    },
  }
})

require("mason-lspconfig").setup()

