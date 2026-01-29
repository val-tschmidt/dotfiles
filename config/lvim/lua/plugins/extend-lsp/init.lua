return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      snyk_ls = {
        init_options = {
          activateSnykCode = "true",
          enableTrustedFoldersFeature = "true",
          trustedFolders = {
            "/Users/tschmidt/code/val-doc-storage",
            "/Users/tschmidt/code/val-barcoder",
          },
        },
      },
    },
  },
}
