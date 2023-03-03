require('gitsigns').setup()
require("neogit").setup({
  integrations = {
    diffview = true
  }
})
require("diffview").setup({
  file_panel = {
    listing_style = "list",
  }
})

local keymap = vim.keymap.set

keymap("n", "<leader>gm", "<cmd>Neogit<CR>")
