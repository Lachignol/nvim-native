local M = {}

local handlers = require("lsp.clangd_handler")
function M.setup()
	vim.lsp.config("ts_ls", require("lsp.ts_ls"))
	vim.lsp.config("lua_ls", require("lsp.lua_ls"))
	vim.lsp.config("html", require("lsp.html"))
	vim.lsp.config("css-lsp", require("lsp.css"))
	vim.lsp.config("clangd", {
		cmd = { "clangd", "--background-index", "--header-insertion=never" },
		on_attach = handlers.clangd_handler,
	})
end

return M
