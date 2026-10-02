-- Single-tabpage interface for reviewing git diffs and file history
-- https://github.com/sindrets/diffview.nvim
return {
  "sindrets/diffview.nvim",
  cmd = {
    "DiffviewOpen",
    "DiffviewClose",
    "DiffviewFileHistory",
    "DiffviewToggleFiles",
    "DiffviewFocusFiles",
    "DiffviewRefresh",
  },
  opts = {
    keymaps = {
      view = {
        { "n", "<esc><esc>", "<cmd>DiffviewClose<cr>", { desc = "Close Diffview" } },
      },
      file_panel = {
        { "n", "<esc><esc>", "<cmd>DiffviewClose<cr>", { desc = "Close Diffview" } },
      },
      file_history_panel = {
        { "n", "<esc><esc>", "<cmd>DiffviewClose<cr>", { desc = "Close Diffview" } },
      },
    },
  },
  keys = {
    {
      "<leader>pd",
      "<cmd>DiffviewOpen<cr>",
      desc = "Diffview Open",
    },
    {
      "<leader>pD",
      "<cmd>DiffviewClose<cr>",
      desc = "Diffview Close",
    },
    {
      "<leader>ph",
      "<cmd>DiffviewFileHistory<cr>",
      desc = "Diffview File History",
    },
    {
      "<leader>pH",
      "<cmd>DiffviewFileHistory %<cr>",
      mode = "n",
      desc = "Diffview Current File History",
    },
    {
      "<leader>pH",
      ":'<,'>DiffviewFileHistory<cr>",
      mode = "v",
      desc = "Diffview Line Range History",
    },
    {
      "<leader>pr",
      "<cmd>DiffviewOpen origin/main...HEAD<cr>",
      desc = "Diffview vs origin/main",
    },
  },
}
