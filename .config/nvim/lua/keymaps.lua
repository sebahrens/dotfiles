-- Set up keymaps
local map = vim.keymap.set

-- NeoTree
map('n', '<leader>e', ':Neotree toggle<CR>', { desc = "Toggle Neotree", silent = true })
map('n', '<leader>fe', ':Neotree focus<CR>', { desc = "Focus Neotree", silent = true })

-- nvim-tree alternative (uncomment if you prefer nvim-tree)
-- map('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = "Toggle NvimTree", silent = true })
-- map('n', '<leader>fe', ':NvimTreeFocus<CR>', { desc = "Focus NvimTree", silent = true })
