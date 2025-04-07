return {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    config = function()
      -- Configure vim-tmux-navigator
      vim.g.tmux_navigator_no_mappings = 1
      
      -- Set up the key mappings for navigation
      vim.keymap.set('n', '<C-h>', '<Cmd>TmuxNavigateLeft<CR>', { silent = true })
      vim.keymap.set('n', '<C-j>', '<Cmd>TmuxNavigateDown<CR>', { silent = true })
      vim.keymap.set('n', '<C-k>', '<Cmd>TmuxNavigateUp<CR>', { silent = true })
      vim.keymap.set('n', '<C-l>', '<Cmd>TmuxNavigateRight<CR>', { silent = true })
    end
  }
}
