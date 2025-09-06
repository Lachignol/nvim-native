-- zen.lua
local zen = require("zen-mode")

zen.setup({
  window = {
    width = vim.o.columns,  -- utilisation complète de la largeur du terminal
    options = {
      number = false,         -- désactive l'affichage des numéros de ligne
      relativenumber = true,  -- active les numéros relatifs
      signcolumn = "yes",     -- affiche la colonne des signes
      cursorline = true,      -- active la ligne du curseur
      cursorcolumn = true,    -- active la colonne du curseur
      foldcolumn = "1",       -- affiche la colonne de pliage
    },
  },
  plugins = {
    twilight = { enabled = true },   -- active twilight pour assombrir le reste du buffer
    gitsigns = { enabled = true },   -- active gitsigns si installé
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
