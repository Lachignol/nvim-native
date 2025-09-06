vim.lsp.enable(
	{
		"lua_ls",
		"ts_ls",
		"gopls",
		"clangd",
	}
)


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

    -- Définir les keymaps LSP
    local bufmap = function(mode, lhs, rhs, opts)
      opts = opts or {}
      opts.buffer = buf
      vim.keymap.set(mode, lhs, rhs, opts)
    end

    bufmap('n', 'gd', vim.lsp.buf.definition, { desc = "Aller à la définition" })
    bufmap('n', 'gD', vim.lsp.buf.declaration, { desc = "Aller à la déclaration" })
    bufmap('n', 'gi', vim.lsp.buf.implementation, { desc = "Aller à l’implémentation" })
    bufmap('n', '<leader>fr', vim.lsp.buf.references, { desc = "Voir les références" })
    bufmap('n', '<leader>rn', vim.lsp.buf.rename, { desc = "Renommer symbole" })
    bufmap('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Action de code" })
    bufmap('n', 'K', vim.lsp.buf.hover, { desc = "Afficher la doc" })
    bufmap('n', '<C-k>', vim.lsp.buf.signature_help, { desc = "Signature fonction" })

    bufmap('n', ']d', vim.diagnostic.goto_next, { desc = "Diagnostic suivant" })
    bufmap('n', '[d', vim.diagnostic.goto_prev, { desc = "Diagnostic précédent" })
    bufmap('n', '<leader>d', vim.diagnostic.open_float, { desc = "Afficher diagnostics" })
    bufmap('n', '<leader>fe', vim.diagnostic.setloclist, { desc = "Liste rapide diagnostics" })
  end,
})



    -- activer manuellement lautocompletion
vim.keymap.set("i", "<C-Space>", function()
  vim.lsp.buf.completion()
end, { desc = "Déclencher la complétion LSP" })

    -- ferme la quicklist
vim.keymap.set('n', '<leader>cq', ':cclose | lclose<CR>', { silent = true, desc = "Fermer quickfix et loclist" })
