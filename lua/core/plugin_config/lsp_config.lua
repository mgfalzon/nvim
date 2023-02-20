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
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

require("mason-lspconfig").setup_handlers {
  function (server_name)
      require("lspconfig")[server_name].setup {
        on_attach = on_attach
      }
  end
}

