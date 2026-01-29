return {
  { "ellisonleao/gruvbox.nvim" },
  { "sainnhe/gruvbox-material" },
  { "cocopon/iceberg.vim" },
  { "ajmwagar/vim-deus" },
  {
    "projekt0n/github-nvim-theme",
    opts = {
      groups = {
        github_dark_dimmed = {
          Normal = { fg = "#ffffff" },
          NormalNC = { fg = "#ffffff" },
          ["@text"] = { fg = "#ffffff" },
          ["@variable"] = { fg = "#ffffff" },
          ["@variable.member"] = { fg = "#ffffff" },
          ["@rubyInstanceVariable"] = { fg = "#ffffff" },
        },
      },
    },
    config = function(_, opts)
      require("github-theme").setup(opts)
    end,
  },
  { "rebelot/kanagawa.nvim" },
  { "EdenEast/nightfox.nvim" },
  { "tanvirtin/monokai.nvim" },
  { "kubemancer/firewatch.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_dark_dimmed",
      -- colorscheme = "deus",
    },
  },
}
