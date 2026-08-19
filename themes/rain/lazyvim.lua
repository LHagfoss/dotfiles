return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
      color_overrides = {
        all = {
          rosewater = "#F0E5DE",
          flamingo = "#F0E5DE",
          pink = "#EC6E5D",
          mauve = "#EC6E5D",
          red = "#EC6E5D",
          maroon = "#EC6E5D",
          peach = "#E0A96D",
          yellow = "#E0A96D",
          green = "#A6E3A1",
          teal = "#3C5865",
          sky = "#3C5865",
          sapphire = "#3C5865",
          blue = "#3C5865",
          lavender = "#F0E5DE",
          text = "#F0E5DE",
          subtext1 = "#D3C8C0",
          subtext0 = "#C5BCB4",
          overlay2 = "#88929A",
          overlay1 = "#6D818C",
          overlay0 = "#5A6D77",
          surface2 = "#353B42",
          surface1 = "#2B3035",
          surface0 = "#22262A",
          base = "#15171A",
          mantle = "#15171A",
          crust = "#15171A",
        },
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
