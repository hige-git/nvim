# SetUp

At the time of writing im using neovim with the version '0.11.6'

[!NOTE]The Links lead to the github page of the tool, only the installed lsps and tools lead to the local configuration.

If used it might be needed to install some dependencies to compile or build stuff.
For example, npm, cargo or even cmake.

## Package and Tool Mangers

- **Package Manager:** [Lazy](https://www.github.com/folke/lazy.nvim.git), core setup
- **Tools Manager:** 
    - [Mason](https://www.github.com/mason-org/mason.nvim)
    - [mason-tool-installer](https://www.github.com/WhoIsSethDaniel/mason-tool-installer.nvim) 
    - [mason-lspconfig](https://www.github.com/mason-org/mason-lspconfig.nvim)(considering deprecation)

## LSP, Formatting, and Linting

- **LSP-config & Completion:** [nvim-lspconfig](https://www.github.com/neovim/nvim-lspconfig), [nvim-cmp](https://www.github.com/hrsh7th/nvim-cmp)
- **Formating:** [conform] with install of formatters via [mason](https://www.github.com/stevearc/conform.nvim)
- **Treesitter:** [nvim-treesitter](https://www.github.com/nvim-treesitter/nvim-treesitter)

### Installed LSPs, Formatters or Linters can be found here: 

- [LSPs](./lua/plugins/lsp/install.lua)
- [Formaters & Linters](./lua/plugins/lsp/install.lua)
- [Treesitter Parsers](./lua/plugins/treesitter.lua)

## Workflow related

- **Git management:** [LazyGit](https://www.github.com/kdheepak/lazygit.nvim), [codediff](https://www.github.com/esmuellert/codediff.nvim)
- **File Managers:** Main use is [oil](https://www.github.com/stevearc/oil.nvim), additionally [neo-tree](https://www.github.com/nvim-neo-tree/neo-tree.nvim)
- **Fuzzy Finding:** [telescope.nvim](https://www.github.com/nvim-telescope/telescope.nvim)
- **Terminal:** [toggleterm](https://www.github.com/akinsho/toggleterm.nvim) nice terminal toggler

## Kind of Decorative

**Colorscheme:** [gruvbox_material](https://www.github.com/sainnhe/gruvbox-material), multiple select possible due to [themify](https://www.github.com/LmanTW/themify.nvim)
**Statusline:** [lualine](https://www.github.com/nvim-lualine/lualine.nvim)


## Some Nice QoL Plugins

- [which-key](https://www.github.com/folke/which-key.nvim) Shows all keymaps 
- [vim-tmux-navigator](https://www.github.com/christoomey/vim-tmux-navigator) Together with some tmux configuration it allows flawless workflow in an tmux environment
- [flash.nvim](https://www.github.com/folke/flash.nvim) Helpfull lookup tool
- [buffer-manager](https://www.github.com/j-morano/buffer_manager.nvim) Allows quick navigation of multiple buffers
- [mini.pairs](https://www.github.com/nvim-mini/mini.pairs) Automatically create closing or opening pairs for some standard characters
- [tabout](https://www.github.com/abecodes/tabout.nvim) Allows tabbing out of some section which can be seen in the config
- [mini.surround](https://www.github.com/nvim-mini/mini.surround) Super helpfull workflow booster, enables automatic adding and removing of surrounding characters

## Some Additionall format support or certain functionality for some formats

- [nvim-emmet](https://www.github.com/) Emmet snippets for html 
- [vimtex](https://www.github.com/) To work on latex Documents
- **Markdown:** 
    - [render-markdown](https://www.github.com/MeanderingProgrammer/render-markdown.nvim) renders markdown in normal mode
    - [markdown-preview](https://www.github.com/iamcco/markdown-preview.nvim)(Still some configuration issues)

# Enhance/TestOut

- Check and Optimize lazy/events.

## Checkout/Test
- [Markdown-plus](https://github.com/YousefHadder/markdown-plus.nvim) 


## ToDevelop/find
- Better or easier clipboard/registry manager

