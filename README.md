# My Neovim setup
This builds on top of NVChad. Assumes you have a recent neovim version installed

If you have a prior setup, uninstall it with:
```
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
```

Install NVChad:
```
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```

Add these customizations, by:
```
git clone git@github.com:wfaler/neovim-setup.git ~/.config/nvim/lua/custom
```

Open `nvim`, run:
```
:MasonInstallAll
```

Done!

Currently supports:

* Golang
