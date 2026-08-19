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
          pink = "#3894F0",
          mauve = "#3894F0",
          red = "#F45866",
          maroon = "#3894F0",
          peach = "#FFD152",
          yellow = "#FFD152",
          -- Vibrant meadow green for strings, operators, and success
          green = "#88C438",
          teal = "#88C438",
          -- Summer azure blue for types and functions
          sky = "#56B6F7",
          sapphire = "#3894F0",
          blue = "#3894F0",
          lavender = "#F0E5DE", -- Soft cloud cream for variables and parameters
          text = "#F0E5DE",
          subtext1 = "#D3C8C0",
          subtext0 = "#C5BCB4",
          overlay2 = "#88929A", -- Readable slate for comments
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
