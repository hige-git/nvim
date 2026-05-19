
# Table of Contents

1.  [SetUp](#orge05a54e)
    1.  [Package and Tool Managers](#orgff72539)
    2.  [LSP, Fomatting and Linting](#org79ef334)
        1.  [Installed LSPs, Formatters or Linters can be found here:](#org693d6d5)
    3.  [Workflow related](#org691d691)
    4.  [Decorative (Kind of)](#orgafed57d)
    5.  [Some nice QoL Plugins](#org08d4a95)
    6.  [Some Additionall fomrat support or certain functionality for some formats](#org8dd6970)
2.  [ToTest/ToDos](#orge866a56)


<a id="orge05a54e"></a>

# SetUp

At the time of writing im using neovim with the version `v0.12.2`

> NOTE:
> 	The links lead to the GitHub page of the tool.
> 	Only the installed LSPs and tools lead to the local configuration.

If used it might be needed to install some dependencies to compile or build stuff. For example, npm, cargo or even cmake


<a id="orgff72539"></a>

## Package and Tool Managers

-   **Package Manager:** [Lazy](https://www.github.com/folke/lazy.nvim.git), core setup
-   **Tool Managers:**
    -   [Mason](https://www.github.com/mason-org/mason.nvim)
    -   [Mason-tool-installer](https://www.github.com/WhoIsSethDaniel/mason-tool-installer.nvim)
    -   [Mason-Lsp-Config ](https://www.github.com/mason-org/mason-lspconfig.nvim)(considering deprecation)


<a id="org79ef334"></a>

## LSP, Fomatting and Linting

-   **LSP-config & Completion:** [nvim-lspconfig](https://www.github.com/neovim/nvim-lspconfig),[blink.cmp](https://github.com/saghen/blink.cmp)
-   **Formatting:** [conform](https://github.com/stevearc/conform.nvim) with install of formathers via [mason](https://www.github.com/mason-org/mason.nvim)
-   **Treesitter:** [nvim-treesitter](https://www.github.com/nvim-treesitter/nvim-treesitter)


<a id="org693d6d5"></a>

### Installed LSPs, Formatters or Linters can be found here:

-   [LSPs](lua/plugins/lsp/install.lua)
-   [Formatters & Linters](lua/plugins/lsp/install.lua)
-   [Treesitter Parsers](lua/plugins/treesitter.lua)


<a id="org691d691"></a>

## Workflow related

-   **Git management:** [LazyGit](https://www.github.com/kdheepak/lazygit.nvim), [CodeDiff](https://www.github.com/esmuellert/codediff.nvim)
-   **File Managers:** Main use is [oil](https://www.github.com/stevearc/oil.nvim), additionally [neo-tree](https://www.github.com/nvim-neo-tree/neo-tree.nvim)
-   **Fuzzy Finding:** [telescope.nvim](https://www.github.com/nvim-telescope/telescope.nvim)
-   **Terminal:** [toggleterm](https://www.github.com/akinsho/toggleterm.nvim)
-   **Undotree:** [Undotree](https://www.github.com/akinsho/mbbill/undotree)
-   **Orgmode:** [Orgmode](https://www.github.com/nvim-orgmode/orgmode)
-   **Project:** [Project.nvim](https://github.com/ahmedkhalf/project.nvim)


<a id="orgafed57d"></a>

## Decorative (Kind of)

-   **Colorscheme Selector:** [huez.nvim](https://github.com/vague2k/huez.nvim)
-   **Lualine:** [lualine.nvim](https://www.github.com/nvim-lualine/lualine.nvim)


<a id="org08d4a95"></a>

## Some nice QoL Plugins

-   [Which-key](https://www.github.com/folke/which-key.nvim)
-   [vim-tmux-navigator](https://www.github.com/christoomey/vim-tmux-navigator)
-   [flash.nvim](https://www.github.com/folke/flash.nvim)
-   [mini.pairs](https://www.github.com/nvim-mini/mini.pairs)
-   [mini.surround](https://www.github.com/nvim-mini/mini.surround)


<a id="org8dd6970"></a>

## Some Additionall fomrat support or certain functionality for some formats

-   [nvim-emmet](https://www.github.com/olrtg/nvim-emmet)
-   [vimtex](https://www.github.com/lervag/vimtex)
-   **Markdown:**
    -   [render-markdown.nvim](https://www.github.com/MeanderingProgrammer/render-markdown.nvim)
    -   [markown-preview](https://www.github.com/iamcco/markdown-preview.nvim) (Still some configuration issues)
-   [tf.nvim](https://www.github.com/iamcco/Allaman/tf.nvim)


<a id="orge866a56"></a>

# ToTest/ToDos

-   [Markdown-plus.nvim](https://github.com/YousefHadder/markdown-plus.nvim)

