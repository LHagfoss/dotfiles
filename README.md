# Rain, Sky, and Overcast themes

Three related dark themes for Zed, RustCode, LazyVim, Ghostty, Starship, and Vesktop:

| Role | Rain | Sky | Overcast |
| --- | --- | --- | --- |
| Base | Charcoal `#15171A` | Charcoal `#15171A` | Slate `#27292C` |
| Primary | Purple `#B28EE8` | Purple `#B28EE8` | Purple `#B28EE8` |
| Secondary | Slate `#3C5865` | Azure `#3894F0` | Fog blue-grey `#858A9B` |
| Warm accent | Amber `#E0A96D` | Sunlight `#FFD152` | Warm grey `#B1A79E` |
| Main text | Cream `#F0E5DE` | Cloud `#F0F6FC` | Fog grey `#F0EDEB` |

Overcast is the quietest of the three: low-contrast slate surfaces, fog-grey text, and restrained blue-grey accents.

Rain is the original warm orange theme. Sky keeps its low-contrast charcoal foundation but uses blue for structure and functions, green for strings and success, and yellow for literals and warnings. Overcast removes the color contrast almost entirely for a soft, blurred-sky look.

## Layout

```text
themes/
├── rain/
│   ├── palette.toml
│   ├── zed.json
│   ├── rustcode.toml
│   ├── lazyvim.lua
│   └── vesktop.css
├── sky/
│   ├── palette.toml
│   ├── zed.json
│   ├── rustcode.toml
│   ├── lazyvim.lua
│   ├── ghostty
│   └── starship.toml
└── overcast/
    ├── palette.toml
    ├── zed.json
    ├── rustcode.toml
    ├── lazyvim.lua
    ├── starship.toml
    └── vesktop.css
```

`zed/settings.json` contains the shared Zed configuration and currently selects Overcast. Theme folders contain only theme-specific files, with matching names across applications.

## Create and switch a theme

For a new coordinated theme, copy the closest existing folder, update `palette.toml` first, then carry the same colors into the Zed, RustCode, LazyVim, Starship, and Vesktop variants. The reusable Codex workflow is installed at `~/.agents/skills/theme-creation/SKILL.md` and includes the app map, switch commands, and validation checks.

For Zed-specific theme structure and the visual Theme Builder, see the [official theme extension documentation](https://zed.dev/docs/extensions/themes) and [Theme Builder](https://zed.dev/theme-builder). Zed intentionally exposes separate keys for the main background, surface, panel, toolbar, and editor, so set each one when a completely flat UI is wanted.

To scaffold from Overcast:

```bash
DOTFILES_ROOT=/Users/lagos/code/dotfiles
THEME=mist
mkdir -p "$DOTFILES_ROOT/themes/$THEME"
cp "$DOTFILES_ROOT/themes/overcast"/{palette.toml,zed.json,rustcode.toml,lazyvim.lua,starship.toml,vesktop.css} \
  "$DOTFILES_ROOT/themes/$THEME/"
perl -pi -e "s/Overcast/Mist/g; s/overcast/$THEME/g" \
  "$DOTFILES_ROOT/themes/$THEME"/*
```

After editing the palette, use the switch block below and run the validation commands from the skill. Keep the previous theme links installed so changing back is one command.

## Install

Run these commands from the repository root. Keep both Zed and Rustcode themes installed so switching does not require replacing files.

```bash
mkdir -p ~/.config/zed/themes ~/.config/rustcode/themes ~/.config/nvim/lua/plugins

ln -sfn "$(pwd)/zed/settings.json" ~/.config/zed/settings.json
ln -sfn "$(pwd)/themes/rain/zed.json" ~/.config/zed/themes/cozy-rain.json
ln -sfn "$(pwd)/themes/sky/zed.json" ~/.config/zed/themes/sky.json
ln -sfn "$(pwd)/themes/overcast/zed.json" ~/.config/zed/themes/overcast.json

ln -sfn "$(pwd)/themes/rain/rustcode.toml" ~/.config/rustcode/themes/rain.toml
ln -sfn "$(pwd)/themes/sky/rustcode.toml" ~/.config/rustcode/themes/sky.toml
ln -sfn "$(pwd)/themes/overcast/rustcode.toml" ~/.config/rustcode/themes/overcast.toml
```

To use Sky in LazyVim:

```bash
ln -sfn "$(pwd)/themes/sky/lazyvim.lua" ~/.config/nvim/lua/plugins/theme.lua
```

To switch LazyVim back to Rain, point the same link at `themes/rain/lazyvim.lua`.

To use Overcast in LazyVim, point the same link at `themes/overcast/lazyvim.lua`.

To use Sky in Ghostty on macOS:

```bash
mkdir -p "$HOME/.config/ghostty/themes"
ln -sfn "$(pwd)/themes/sky/ghostty" \
  "$HOME/.config/ghostty/themes/Sky"
```

Then set `theme = Sky` in Ghostty's config.

To use the current Overcast Starship prompt:

```bash
ln -sfn "$(pwd)/themes/overcast/starship.toml" ~/.config/starship.toml
```

### Vesktop

Rain and Overcast include Vesktop themes:

```bash
mkdir -p "$HOME/Library/Application Support/vesktop/themes"
ln -sfn "$(pwd)/themes/rain/vesktop.css" \
  "$HOME/Library/Application Support/vesktop/themes/cozy-rain.theme.css"
ln -sfn "$(pwd)/themes/overcast/vesktop.css" \
  "$HOME/Library/Application Support/vesktop/themes/overcast.theme.css"
```

Enable **Cozy Rain** or **Overcast** under **Discord Settings → Vencord → Themes**.
