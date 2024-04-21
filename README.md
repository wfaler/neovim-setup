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
```

Done!

Currently supports:

* Golang (excluding debugger, for debug, view: https://www.youtube.com/watch?v=i04sSQjd-qo)
* Python (excluding debugger, for debug, view: https://www.youtube.com/watch?v=4BnVeOUeZxc)
* Scala (metals-nvim), requires Java, SBT & Coursier installed, may require `coursier install metals`
* Typescript/Javascript with LSP
* Terraform
* Copilot
* Running tests with neotest (requires treesitter grammar installed for each language)
* Vue 3 (requires  npm install  @vue/typescript-plugin in each project as a dev dependency - as this does not seem to be available through Mason)

## TODO
* Rust
* Gradle + Kotlin
