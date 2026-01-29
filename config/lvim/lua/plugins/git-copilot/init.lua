return {
  "github/copilot.vim",
  enabled = true,
  event = "InsertEnter",
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
  opts = {
    not_tab_map = true,
  },
}
