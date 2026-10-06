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
      function()
        local current = vim.fn.systemlist({ "git", "rev-parse", "--abbrev-ref", "HEAD" })[1]
        local branches = vim.fn.systemlist({ "git", "branch", "--format=%(refname:short)" })
        if vim.v.shell_error ~= 0 then
          vim.notify("Failed to list local git branches", vim.log.levels.ERROR)
          return
        end

        local choices = vim.tbl_filter(function(branch)
          return branch ~= "" and branch ~= current
        end, branches)

        if vim.tbl_isempty(choices) then
          vim.notify("No other local branches to diff against", vim.log.levels.WARN)
          return
        end

        vim.ui.select(choices, { prompt = "Diffview vs branch:" }, function(branch)
          if not branch then
            return
          end
          vim.cmd("DiffviewOpen " .. vim.fn.fnameescape(branch))
        end)
      end,
      desc = "Diffview vs branch",
    },
  },
}
