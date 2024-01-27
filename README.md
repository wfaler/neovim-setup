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
rm -rf ~/.config/nvim/lua/custom
git clone git@github.com:wfaler/neovim-setup.git ~/.config/nvim/lua/custom
```

Open `nvim`, run:
```
:MasonInstallAll
:TSInstall terraform
```

Done!

Currently supports:

* Golang (excluding tests, debug, for debug, view: https://www.youtube.com/watch?v=i04sSQjd-qo)
* Python (excluding tests, debug, for debug, view: https://www.youtube.com/watch?v=4BnVeOUeZxc)
* Terraform
* Copilot
* Typescript/Javascript with LSP
* Running tests with vim-test
* Scala (metals-nvim)

## TODO
* Rust
* Gradle + Kotlin
