# My Neovim setup
## About
I usually use neovim when coding non-jvm applications and tools. This is mainly a place to keep the code if I want to quickly get set up on different computers. Feel free to use it as you like or let me know about any cool plugins!

## Plugins
The plugins used are as follows:
* packer
* lsp-zero
* telescope
* treesitter / treesitter playground / undotree
* fugitive
* ufo
* tabnine

### Packer
Currently using Packer as my plugin manager, though I might join the hypetrain and use lazy eventually

### LSP-zero
Languages configured on the server list are naturally the ones I use the most. I have the following configured servers:
* pyright for Python
* rust_analyser for Rust
* tsserver for TypeScript
* clangd for c++
* lua_ls for lua

### Telescope
This is a fuzzy finder to let me search though github files / regular files in a project

### Treesitter
Allows for better parsing and highlighting of code. treesitter playground allows you to view the treesitter ast directly. Undotree lets you go back and edit the branches.

### Fugitive
This lets you use git inside of neovim

### nvim-ufo
This lets you collapse and expand indented code

### tabnine
Lightweight ai companion. Provides smaller code snippets than copilot. I often have it turned off.

## Main hotkeys
