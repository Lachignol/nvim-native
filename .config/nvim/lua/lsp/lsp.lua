vim.lsp.enable(
	{
		"lua_ls",
		"ts_ls",
		"gopls",
		"clangd",
	}
)

require("lsp.clangd")


vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = true,
})

    -- permet de demander validation a lautocompletion
vim.opt.completeopt = { "menuone", "noinsert", "noselect" }

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('my.lsp', {}),
  callback = function(args)
    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
    local buf = args.buf

    -- Activer autocomplétion si supporté
    if client:supports_method('textDocument/completion') then
      local chars = {}
      for i = 32, 126 do table.insert(chars, string.char(i)) end
      client.server_capabilities.completionProvider.triggerCharacters = chars
      vim.lsp.completion.enable(true, client.id, buf, { autotrigger = true })
      end
  end
})
    -- activer manuellement lautocompletion
vim.keymap.set("i", "<C-Space>", function()
  vim.lsp.buf.completion()
end, { desc = "Déclencher la complétion LSP" })

    -- ferme la quicklist
vim.keymap.set('n', '<leader>cq', ':cclose | lclose<CR>', { silent = true, desc = "Fermer quickfix et loclist" })
