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
          rosewater = "#F5F7FA",
          flamingo = "#F5F7FA",
          pink = "#BBA4E7",
          mauve = "#B28EE8",
          red = "#F45866",
          maroon = "#B28EE8",
          peach = "#FFD152",
          yellow = "#FFD152",
          -- Vibrant meadow green for strings, operators, and success
          green = "#88C438",
          teal = "#88C438",
          -- Summer azure blue for types and functions
          sky = "#56B6F7",
          sapphire = "#3894F0",
          blue = "#3894F0",
          lavender = "#F5F7FA", -- Bright cloud white for variables and parameters
          text = "#F5F7FA",
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
      custom_highlights = function(colors)
        return {
          Comment = { fg = colors.overlay1, italic = true },
          ["@comment"] = { fg = colors.overlay1, italic = true },
          Keyword = { fg = colors.mauve, bold = true },
          ["@keyword"] = { fg = colors.mauve, bold = true },
          Function = { fg = colors.pink },
          ["@function"] = { fg = colors.pink },
          String = { fg = colors.green },
          ["@string"] = { fg = colors.green },
          Type = { fg = colors.sky },
          ["@type"] = { fg = colors.sky },
          Number = { fg = colors.yellow },
          ["@number"] = { fg = colors.yellow },
          Boolean = { fg = colors.yellow },
          ["@boolean"] = { fg = colors.yellow },
          Constant = { fg = colors.text },
          ["@constant"] = { fg = colors.text },
          Property = { fg = colors.subtext0 },
          ["@property"] = { fg = colors.subtext0 },
          Operator = { fg = colors.green },
          ["@operator"] = { fg = colors.green },
          Delimiter = { fg = colors.overlay1 },
          ["@punctuation.delimiter"] = { fg = colors.overlay1 },
          Tag = { fg = colors.mauve },
          ["@tag"] = { fg = colors.mauve },
          ["@tag.attribute"] = { fg = colors.green },
        }
      end,
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
