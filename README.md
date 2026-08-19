# Rain and Sky themes

Two related dark themes for Zed, Rustcode, and LazyVim:

| Role | Rain | Sky |
| --- | --- | --- |
| Base | Charcoal `#15171A` | Charcoal `#15171A` |
| Primary | Coral `#EC6E5D` | Azure `#3894F0` |
| Secondary | Slate `#3C5865` | Meadow `#88C438` |
| Warm accent | Amber `#E0A96D` | Sunlight `#FFD152` |
| Main text | Cream `#F0E5DE` | Cloud `#F0F6FC` |

Rain is the original warm orange theme. Sky keeps its low-contrast charcoal foundation but uses blue for structure and functions, green for strings and success, and yellow for literals and warnings.

## Layout

```text
themes/
├── rain/
│   ├── palette.toml
│   ├── zed.json
│   ├── rustcode.toml
│   ├── lazyvim.lua
│   └── vesktop.css
└── sky/
    ├── palette.toml
    ├── zed.json
    ├── rustcode.toml
    └── lazyvim.lua
```

`zed/settings.json` contains the shared Zed configuration and currently selects Sky. Theme folders contain only theme-specific files, with matching names across applications.

## Install

Run these commands from the repository root. Keep both Zed and Rustcode themes installed so switching does not require replacing files.

```bash
mkdir -p ~/.config/zed/themes ~/.config/rustcode/themes ~/.config/nvim/lua/plugins

ln -sfn "$(pwd)/zed/settings.json" ~/.config/zed/settings.json
ln -sfn "$(pwd)/themes/rain/zed.json" ~/.config/zed/themes/cozy-rain.json
ln -sfn "$(pwd)/themes/sky/zed.json" ~/.config/zed/themes/sky.json

ln -sfn "$(pwd)/themes/rain/rustcode.toml" ~/.config/rustcode/themes/rain.toml
ln -sfn "$(pwd)/themes/sky/rustcode.toml" ~/.config/rustcode/themes/sky.toml
```

To use Sky in LazyVim:

```bash
ln -sfn "$(pwd)/themes/sky/lazyvim.lua" ~/.config/nvim/lua/plugins/theme.lua
```

To switch LazyVim back to Rain, point the same link at `themes/rain/lazyvim.lua`.

### Vesktop

Rain also includes the existing Vesktop theme:

```bash
mkdir -p "$HOME/Library/Application Support/vesktop/themes"
ln -sfn "$(pwd)/themes/rain/vesktop.css" \
  "$HOME/Library/Application Support/vesktop/themes/cozy-rain.theme.css"
```

Enable **Cozy Rain** under **Discord Settings → Vencord → Themes**.
