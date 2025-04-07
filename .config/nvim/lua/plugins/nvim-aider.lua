return {
  "GeorgesAlkhouri/nvim-aider",
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
    -- Example nvim-tree.lua integration
    { "<leader>a+", "<cmd>AiderTreeAddFile<cr>", desc = "Add File from Tree to Aider", ft = "NvimTree" },
    { "<leader>a-", "<cmd>AiderTreeDropFile<cr>", desc = "Drop File from Tree from Aider", ft = "NvimTree" },
  },
  dependencies = {
    "folke/snacks.nvim",
    -- Optional dependencies
    "catppuccin/nvim",
    "nvim-tree/nvim-tree.lua",
    -- Neo-tree integration
    {
      "nvim-neo-tree/neo-tree.nvim",
      opts = function(_, opts)
        require("nvim_aider.neo_tree").setup(opts)
      end,
    },
  },
  config = function()
    require("nvim_aider").setup({
      -- Command that executes Aider
      aider_cmd = "aider",
      -- Command line arguments passed to aider
      args = {
        "--no-auto-commits",
        "--pretty",
        "--stream",
      },
      -- Theme colors (automatically uses Catppuccin flavor if available)
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
      -- snacks.picker.layout.Config configuration
      picker_cfg = {
        preset = "vscode",
      },
      -- Other snacks.terminal.Opts options
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
}
