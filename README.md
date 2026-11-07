# Rudzik — Omarchy Theme

A **warm amber-on-black** theme for [Omarchy](https://omarchy.org/), generated
from a single wallpaper with [Aether](https://github.com/omarchy/aether) and
packaged as a portable Omarchy theme.

Everything is driven by one [`colors.toml`](colors.toml). Omarchy generates the
matching Hyprland borders, terminal palettes (Alacritty, Foot, Ghostty, Kitty),
the shell/bar surfaces, Neovim colorscheme, btop, VS Code theme and more from
that file on install — so the theme looks the same on any Omarchy machine.

![Preview](preview.jpg)

## Install (one command)

```bash
omarchy theme install https://github.com/marmuto/rudzik_theme.git
```

The theme is cloned into `~/.config/omarchy/themes/rudzik_theme` and applied
immediately. Switch back to it at any time with:

```bash
omarchy theme set rudzik_theme
```

### Alternative installer

Also works on a fresh machine without a prior clone:

```bash
curl -fsSL https://raw.githubusercontent.com/marmuto/rudzik_theme/main/install.sh | bash
```

## Palette

| Role | Color |
|------|-------|
| Background | `#0C0801` |
| Foreground | `#F1C31A` |
| Accent | `#658e50` |
| Selection | `#24211a` |
| Muted | `#615f59` |
| Red | `#b78e54` |
| Orange | `#c29f6e` |
| Yellow | `#fff287` |
| Green | `#d0c66f` |
| Cyan | `#d3e675` |
| Blue | `#658e50` |
| Magenta | `#e4985a` |
| Brown | `#745f42` |

Light/dark ramp extras: `dark_background #090601`,
`darker_background #060401`, `lighter_background #24211a`,
`dark_foreground #b59214`, `light_foreground #f3cc3c`,
`bright_foreground #f5d253`.

## What's inside

| File | Purpose |
|------|---------|
| `colors.toml` | The whole palette — every app config is generated from it |
| `icons.theme` | Icon theme (`Yaru-wartybrown`) |
| `backgrounds/` | Default wallpaper, set on apply |
| `preview.jpg` / `preview.png` | Screenshot for the theme listing |
| `install.sh` | Optional `curl \| bash` installer |

## Customize

Edit `~/.config/omarchy/themes/rudzik_theme/colors.toml`, then re-apply:

```bash
omarchy theme set rudzik_theme
```

Any extra wallpapers you drop into `~/.config/omarchy/backgrounds/rudzik_theme/`
show up in `omarchy theme bg next`.

## Credits

- Palette and packaging: [marmuto](https://github.com/marmuto)
- Wallpaper: [doncoombez on Unsplash](https://unsplash.com/photos/CzW7LyMKGbs)
- Theme engine: [Omarchy](https://omarchy.org/) + [Aether](https://github.com/omarchy/aether)
