# vercel-noir

A pure-black Neovim colorscheme based on Vercel's Geist palette — a fork of
[vercel-theme.nvim](https://github.com/ceigh/vercel-theme.nvim) with brighter,
more saturated accents, fuller treesitter/LSP coverage, and an optional
transparent background.

<!-- ![vercel-noir](assets/preview.png) -->

## Install

lazy.nvim:

```lua
{
  "abdulraheem-alsibyani/vercel-noir.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("vercel-noir")
  end,
}
```

## Transparency

Off by default. To let the terminal background through, set this before the
colorscheme loads:

```lua
vim.g.vercel_noir_transparent = true
vim.cmd.colorscheme("vercel-noir")
```

## Palette

| role | color |
| --- | --- |
| background | `#000000` |
| foreground | `#fbfbfb` |
| keywords / operators | `#ff4fb0` |
| strings | `#4fe3a0` |
| functions | `#b06bff` |
| variables | `#5ea8ff` |
| numbers / constants | `#ff9e64` |

## Alacritty

A matching Alacritty colorscheme lives in [`extras/vercel-noir.toml`](extras/vercel-noir.toml).
Drop it in your Alacritty config directory and import it:

```toml
import = ["~/.config/alacritty/vercel-noir.toml"]
```

## Credits

Forked from [vercel-theme.nvim](https://github.com/ceigh/vercel-theme.nvim) by Artem Lebzak.

## License

MIT
