return {
  "github/copilot.vim",
  enabled = true,
  event = "InsertEnter",

  init = function()
    vim.g.copilot_enabled = true
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_assume_mapped = true
  end,

  keys = {
    {
      "<C-j>",
      'copilot#Accept("")',
      mode = "i",
      expr = true,
      replace_keycodes = false,
      desc = "Accept Copilot suggestion",
    },
    {
      "<M-j>",
      "<Plug>(copilot-next)",
      mode = "i",
      desc = "Copolit next suggestion",
    },
    {
      "<M-k>",
      "<Plug>(copilot-previous)",
      mode = "i",
      desc = "Copolit previous suggestion",
    },
  },
}
