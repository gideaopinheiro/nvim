require 'toggleterm'.setup {
  size = 12,
  open_mapping = [[<C-t>]],
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 1,
  start_in_insert = true,
  persist_size = true,
  close_on_exit = true,
  direction = 'float',
  float_opts = {
    border = "curved",
    highlights = {
      border = "Normal",
      background = "Normal"
    }
  }
}

local Terminal = require("toggleterm.terminal").Terminal

local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
function _LAZYGIT_TOGGLE()
  lazygit:toggle()
end

local node = Terminal:new({ cmd = "node", hidden = true })
function _NODE_TOGGLE()
  node:toggle()
end

local htop = Terminal:new({ cmd = "htop", hidden = true })
function _HTOP_TOGGLE()
  htop:toggle()
end

local elixir = Terminal:new({ cmd = "iex", hidden = true })
function IEX()
  elixir:toggle()
end
