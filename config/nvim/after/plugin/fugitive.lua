vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
vim.keymap.set('n', '<leader>gj', ':diffget //3<CR>')
vim.keymap.set('n', '<leader>gf', ':diffget //2<CR>')
vim.keymap.set('n', '<leader>gtn', function() 
    require('telescope').extensions.git_worktree.create_git_worktree()
end)
vim.keymap.set('n', '<leader>gt', function() 
    require('telescope').extensions.git_worktree.create_git_worktree()
require('telescope').extensions.git_worktree.git_worktrees()
end)