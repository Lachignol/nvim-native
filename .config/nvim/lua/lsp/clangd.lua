local handlers = require("lsp.clangd_handler")
vim.lsp.config("clangd", {
  cmd = { "clangd", "--background-index", "--header-insertion=never" },
  on_attach = handlers.clangd_handler,
})

