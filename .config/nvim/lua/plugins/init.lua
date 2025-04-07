return {
  -- Core dependencies
  { "folke/snacks.nvim" },
  { "nvim-lua/plenary.nvim" },
  { "nvim-tree/nvim-web-devicons" },
  { "MunifTanjim/nui.nvim" },
  
  -- Optional dependencies
  { "catppuccin/nvim", name = "catppuccin" },
  { "nvim-tree/nvim-tree.lua" },
  
  -- Neo-tree plugin
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
    	-- disable netrw
    	vim.g.loaded_netrw = 1
    	vim.g.loaded_netrwPlugin = 1
    
    	-- setup neo-tree
    	require("neo-tree").setup({
      		close_if_last_window = false,
      		window = {
        	width = 30,
      	},
    })
  end,


  },
  
  -- nvim-aider plugin
  {
    "GeorgesAlkhouri/nvim-aider",
    dependencies = {
      "folke/snacks.nvim",
      "nvim-neo-tree/neo-tree.nvim",
      "nvim-tree/nvim-tree.lua",
    },
    cmd = {
      "AiderTerminalToggle", "AiderHealth",
    },
    keys = {
      { "<leader>a/", "<cmd>AiderTerminalToggle<cr>", desc = "Open Aider" },
      { "<leader>as", "<cmd>AiderTerminalSend<cr>", desc = "Send to Aider", mode = { "n", "v" } },
      { "<leader>ac", "<cmd>AiderQuickSendCommand<cr>", desc = "Send Command To Aider" },
      { "<leader>ab", "<cmd>AiderQuickSendBuffer<cr>", desc = "Send Buffer To Aider" },
      { "<leader>a+", "<cmd>AiderQuickAddFile<cr>", desc = "Add File to Aider" },
      { "<leader>a-", "<cmd>AiderQuickDropFile<cr>", desc = "Drop File from Aider" },
      { "<leader>ar", "<cmd>AiderQuickReadOnlyFile<cr>", desc = "Add File as Read-Only" },
    },
    config = function()
      require("nvim_aider").setup({
        aider_cmd = "aider",
        args = {
          "--no-auto-commits",
          "--pretty",
          "--stream",
        },
        theme = {
          user_input_color = "#a6da95",
          tool_output_color = "#8aadf4",
          tool_error_color = "#ed8796",
          tool_warning_color = "#eed49f",
          assistant_output_color = "#c6a0f6",
          completion_menu_color = "#cad3f5",
          completion_menu_bg_color = "#24273a",
          completion_menu_current_color = "#181926",
          completion_menu_current_bg_color = "#f4dbd6",
        },
        picker_cfg = {
          preset = "vscode",
        },
        config = {
          os = { editPreset = "nvim-remote" },
          gui = { nerdFontsVersion = "3" },
        },
        win = {
          wo = { winbar = "Aider" },
          style = "nvim_aider",
          position = "bottom",
        },
      })
    end,
  },
}
