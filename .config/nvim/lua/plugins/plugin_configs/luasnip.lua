require("luasnip").setup({ enable_autosnippets = true })
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets/" })
local ls = require("luasnip")
-- Expand snippet ou jump au champ suivant
vim.keymap.set("i", "<C-y>", function() ls.expand_or_jump() end, { silent = true })

-- Jump avant dans un snippet
vim.keymap.set({ "i", "s" }, "<C-j>", function() ls.jump(1) end, { silent = true })

-- Jump arrière dans un snippet
vim.keymap.set({ "i", "s" }, "<C-k>", function() ls.jump(-1) end, { silent = true })
