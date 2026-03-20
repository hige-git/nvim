-- Options set for usage :help options

local o = vim.opt

o.backup = false
o.clipboard = "unnamedplus"                       -- Changes copy and paste registries to sysmte wide
o.cmdheight = 1                                   -- Changes the height of command line for displaying messages
o.completeopt = { "noselect", "menu", "menuone" } -- for cmp plugins
o.conceallevel = 0                                -- so that `` is visible in markdown files
o.fileencoding = "utf-8"                          -- Encoding of written in a file
o.hlsearch = true                                 -- highlights matches in search
o.ignorecase = true                               -- allows search which ignores case
o.showtabline = 0                                 -- always shows tabs
o.smartcase = true                                -- if written capitalized or titled, it does not ignore case
o.smartindent = true                              -- Allows smart indentation while writing code
o.splitbelow = true                               -- force all horizontal splits to go below current window
o.splitright = true                               -- force all vertical splits to go  to the right of the current window
o.swapfile = false                                -- does not creates a swapfile anymore
o.termguicolors = true                            -- to use term gui colors
o.timeoutlen = 1000                               -- max time to wait for mapped sequence
o.updatetime = 300                                -- faster completions
o.writebackup = false                             -- disable the possibility to edit a file that is being edited by another programm
o.expandtab = true                                -- converts tabs to spaces
o.shiftwidth = 2                                  -- the number of spaces insted for each indentation
o.tabstop = 2                                     -- inserts 2 spaces for one tab
o.cursorline = true                               -- to highlight the current line im on
o.number = true                                   -- always show line numers
o.relativenumber = true                           -- set relatives numbered lines
o.numberwidth = 2                                 -- makes width of displayed numbers smaller
o.signcolumn = "yes"                              -- always shows the sign column, otherwise it would shift text on sign for other lines
o.wrap = false                                    -- to not cut lines, and allow longer lines
o.scrolloff = 8                                   -- so that on scrolling down the cursor stays at 8 lines from top, meaning it can be under
o.sidescrolloff = 8                               -- same for the side
o.guifont = "JetBrains Mono:h14"                  -- Font to use in neovim
o.undofile = true                                 -- to use undo even after closing file
o.autoread = true                                 -- reload if file has been changed
o.confirm = true                                  -- Confirm before exiting a window without saving
o.formatoptions = "cqj"
o.shortmess:append "c"

--- Folding Options
o.foldmethod = "expr"                          -- to apply fold according to a expr defined in foldexpr
o.foldexpr = "v:lua.vim.treesitter.foldexpr()" -- Allows to fold according to treesitter differenciating
o.foldcolumn = "0"                             -- disables folding column (horizontal)
o.foldtext = ""                                -- Disables foldtext, and diplays the line normally with highlighting and no line wrapping
o.foldlevel = 1                                -- Adjust number of folds that are closed
o.foldlevelstart = 99                          -- Starts with no folds (99 is to high for any code)
o.foldnestmax = 4                              -- Limits the maximal folds possible
