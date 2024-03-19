local cmp = require('cmp')

vim.api.nvim_set_hl(0, "MyPmenu", {bg = "#191919"})

cmp.setup({
  window = {
    completion = cmp.config.window.bordered({
      border = "rounded",
      winhighlight = "Normal:MyPmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None",
    }),
    documentation = cmp.config.window.bordered({
      border = "rounded",
      winhighlight = "Normal:MyPmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None"
    }),
  },
})
