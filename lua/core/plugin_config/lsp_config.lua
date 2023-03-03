require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed  = {
    "lua_ls",
    "bashls",
    "cssls",
    "dockerls",
    "docker_compose_language_service",
    "eslint",
    "html",
    "jsonls",
    "jdtls",
    "tsserver",
    "marksman",
    "pylsp",
    "sqlls",
    "yamlls",
  }
}

local on_attach = function(_, _)
  -- vim.keymap.set('n', '<leader>cw', vim.lsp.buf.rename, {})
  -- vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  --vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  -- vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("mason-lspconfig").setup_handlers {
  function (server_name)
      require("lspconfig")[server_name].setup {
        on_attach = on_attach,
        capabilities = capabilities
      }
  end
}

