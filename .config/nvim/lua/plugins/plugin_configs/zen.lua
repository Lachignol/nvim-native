-- zen.lua
local zen = require("zen-mode")

zen.setup({
  window = {
    width = 80,          -- largeur de la fenêtre de codage zen
    options = {
      number = false,    -- désactive le numéro de ligne
      relativenumber = false,
      signcolumn = "no",
      cursorline = false,
      cursorcolumn = false,
      foldcolumn = "0",
    },
  },
  plugins = {
    twilight = { enabled = true },
    gitsigns = { enabled = false },
    -- autres plugins à configurer ...
  },
  on_open = function()
    print("Zen mode activé")
  end,
  on_close = function()
    print("Zen mode désactivé")
  end,
})

-- Keymap pour toggle Zen Mode
vim.keymap.set("n", "<leader>z", function() zen.toggle() end, { desc = "Toggle Zen Mode" })

