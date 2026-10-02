return {
  -- Diable nvim-cmp's ghost text as it conflicts with github/copilot's inline
  -- code suggestions.
  {
    "hrsh7th/nvim-cmp",
    optional = true,
    opts = {
      experimental = {
        ghost_text = false,
      },
    },
  },
  -- Diable blink.cmp's ghost text as it conflicts with github/copilot's inline
  -- code suggestions.
  {
    "saghen/blink.cmp",
    optional = true,
    opts = {
      completion = {
        ghost_text = { enabled = false },
      },
    },
  },
}
