require('nvim-treesitter.configs').setup {
  -- List of parser names, or "all"
  ensure_installed = { "c", "lua", "rust", "ruby", "vim", "javascript" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    enable = true,
  },
}
