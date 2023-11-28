vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set('n', '<leader>xx', function() require('trouble').toggle() end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)

--vim.keymap.set('n', '<leader>xq', '<cmd>TroubleToggle quickfix<cr>',
--  {silent = true, noremap = true}
--)
