return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      rubocop = {
        args = {
          "-f",
          "quiet",
          "--stderr",
          "--stdin",
          "$FILENAME",
        },
      },
    },
  },
}
