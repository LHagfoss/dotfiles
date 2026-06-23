# Cozy Rain Theme

A cozy, warm, and dark desktop theme built with a smoky charcoal base, soft cream text, vibrant coral highlights, and deep slate blue indicators.

Designed and tested on Hyprland with Kitty, Cava, Mewline status bar, and Neovim (LazyVim).

## 🎨 Color Palette

| Color | Hex/Value | Description | Usage |
| :--- | :--- | :--- | :--- |
| **Smoky Charcoal** | `#1A1D20` | Base background | Window backgrounds, primary panels |
| **Translucent Charcoal** | `rgba(26, 29, 32, 0.85)` | Panel background | Floating overlays, dropdowns, dynamic island |
| **Soft Cream** | `#F0E5DE` | Main foreground/text | Active text, labels, foreground icons |
| **Vibrant Coral** | `#EC6E5D` | Primary accent | Active workspaces, focused selections, button states |
| **Deep Slate Blue** | `#3C5865` | Secondary accent / indicator | Scrollbars, audio visualizers, borders, mute button |

---

## 💻 Application Configurations

### 1. Kitty (`~/.config/kitty/kitty.conf`)
```ini
background            #1A1D20
foreground            #F0E5DE
cursor                #EC6E5D
selection_background  #3C5865
selection_foreground  #F0E5DE

# Standard Terminal Colors
color0  #1A1D20
color8  #232D35
color1  #EC6E5D
color9  #EC6E5D
color2  #3C5865
color10 #3C5865
color3  #EC6E5D
color11 #EC6E5D
color4  #3C5865
color12 #3C5865
color5  #F0E5DE
color13 #F0E5DE
color6  #3C5865
color14 #3C5865
color7  #F0E5DE
color15 #F0E5DE
```

### 2. Cava (`~/.config/cava/config`)
Smooth gradient transition from Deep Slate Blue to Vibrant Coral:
```ini
[color]
gradient = 1
gradient_color_1 = '#3c5865'
gradient_color_2 = '#555b63'
gradient_color_3 = '#6e5e62'
gradient_color_4 = '#876161'
gradient_color_5 = '#a06460'
gradient_color_6 = '#b9675f'
gradient_color_7 = '#d26a5e'
gradient_color_8 = '#ec6e5d'
```

### 3. Mewline Bar (`/opt/mewline/src/mewline/styles/`)
#### `default_theme.scss`
```scss
$background-base: #{"@panel-bg"};
$background-highlight: #{"@base-bg"};
$background-element: #{"@base-bg"};

$accent-color: #{"@accent-coral"};
$accent-slate: #{"@accent-slate"};
$accent-error: #f38ba8;
$accent-warning: #fab387;
$accent-success: #a6e3a1;

$text-color: #{"@text-main"};
$text-secondary: #585b70;
$text-muted: #9399b2;
$text-on-accent: #{"@base-bg"};

$shadow-color: rgba(0, 0, 0, 0.6);
$corners-color: #000000;
```

#### GTK Variables prepended in `main.scss`
```scss
@define-color base-bg #1A1D20;
@define-color panel-bg rgba(26, 29, 32, 0.85);
@define-color text-main #F0E5DE;
@define-color accent-coral #EC6E5D;
@define-color accent-slate #3C5865;
```

### 4. Neovim (LazyVim Catppuccin spec `lua/plugins/colorscheme.lua`)
```lua
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
          peach = "#EC6E5D",
          yellow = "#F0E5DE",
          green = "#3C5865",
          teal = "#3C5865",
          sky = "#3C5865",
          sapphire = "#3C5865",
          blue = "#3C5865",
          lavender = "#3C5865",
          text = "#F0E5DE",
          subtext1 = "#c5bcb4",
          subtext0 = "#ab9e95",
          overlay2 = "#828c93",
          overlay1 = "#5a646c",
          overlay0 = "#3C5865",
          surface2 = "#30343a",
          surface1 = "#25282e",
          surface0 = "#1a1d20",
          base = "#1a1d20",
          mantle = "#1a1d20",
          crust = "#1a1d20",
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
```

### 5. Zed Editor

Both settings and theme files can be symlinked directly from this repository to your local Zed configuration:

```bash
# Ensure themes directory exists
mkdir -p ~/.config/zed/themes

# Create symlinks (run from repository root)
ln -sf "$(pwd)/zed/themes/cozy-rain.json" ~/.config/zed/themes/cozy-rain.json
ln -sf "$(pwd)/zed/settings.json" ~/.config/zed/settings.json
```

Then select **Cozy Rain** in your Zed theme selector (`Cmd + k` then `Cmd + t`).

### 6. Vesktop / Vencord (Discord client)

Symlink the custom theme CSS file directly from this repository to your local Vesktop themes configuration:

```bash
# Ensure Vesktop themes directory exists
mkdir -p "$HOME/Library/Application Support/vesktop/themes"

# Create symlink (run from repository root)
ln -sf "$(pwd)/discord/cozy-rain.theme.css" "$HOME/Library/Application Support/vesktop/themes/cozy-rain.theme.css"
```

Then go to **Discord Settings > Vencord > Themes**, find **Cozy Rain** under **Local Themes**, and toggle it on!
