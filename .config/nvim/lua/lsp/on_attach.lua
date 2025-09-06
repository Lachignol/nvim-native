local M = {}

function M.on_attach(client, bufnr)
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

end
return M
