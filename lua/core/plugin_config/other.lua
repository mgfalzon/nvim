require('Comment').setup()
require("nvim-autopairs").setup()
require("auto-save").setup()


local keymap = vim.keymap.set

keymap("n", "<leader>/", function ()
  require("Comment.api").toggle.linewise.current()
end)

keymap("v", "<leader>/","<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")



