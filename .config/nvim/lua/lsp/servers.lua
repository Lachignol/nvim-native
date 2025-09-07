local M = {}
function M.setup()
	vim.lsp.config("ts_ls", require("lsp.servers.ts_ls"))
	vim.lsp.config("lua_ls", require("lsp.servers.lua_ls"))
	vim.lsp.config("html", require("lsp.servers.html"))
	vim.lsp.config("css-lsp", require("lsp.servers.css"))
	vim.lsp.config("gopls", require("lsp.servers.gopls"))
	vim.lsp.config("clangd", require("lsp.servers.clangd"))

	vim.lsp.enable({
		"lua_ls",
		"html",
		"css-lsp",
		"ts_ls",
		"gopls",
		"clangd",
	})
end

return M
