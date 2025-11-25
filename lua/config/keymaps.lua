local opts = { noremap = true, silent = true}
local k = vim.keymap.set


-- Remap Leader
k("", "<space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes            <- Can only be triggert from normal mode
-- normal = n       <- Entered by escaping other modes
-- insert = i       <- Entered by Typing i
-- visual = v       <- Entered by Typing v for one letter or Shift + V for a line
-- visual_block = x <- Entered by typing ctrl + V
-- terminal = t     <- Entered by pressing space + t according to toggle definition
-- command_mode = c <- Entered by pressing : 


-- Make my life easier
k("n", "<Esc><Esc>", ":noh<CR>", opts) -- disables text highlighting if active


-- Fuzzy Finder
k("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
k("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")
k("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
k("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")

-- File Tree
k('n', '<leader>e', '<cmd>Neotree toggle<CR>')

-- Terminal Mode
k('n', '<leader>t', '<cmd>ToggleTerm<CR>') -- To close again ctrl + d
k('t', '<Esc>', '<C-\\><C-n>')

-- Indent Mode
k('v', '<', '<gv', opts)
k('v', '>', '>gv', opts)

-- Better Window Managment
k('n', '<C-h>', '<C-w>h', opts)
k('n', '<C-j>', '<C-w>j', opts)
k('n', '<C-k>', '<C-w>k', opts)
k('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
k("n", "<C-Up>", ":resize -2<CR>", opts)
k("n", "<C-Down>", ":resize +2<CR>", opts)
k("n", "<C-Left>", ":vertical resize -2<CR>", opts)
k("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Create Windows
k('n', '<leader>v', ':vsplit <CR>', opts)
k('n', '<leader>h', ':horizontal split <CR>', opts)
k('n', '<leader>n', ':tabnew <CR>', opts)

-- Close Windows
if #vim.api.nvim_list_wins() <= 1 then
  k('n', '<leader>x', ':q<CR>', opts)
else
  k('n', '<leader>x', '<C-w>c', opts)
end

-- Navigate Tabs
k('n', '<tab>', ':tabn<CR>')
k('n', '<S-tab>', ':tabp<CR>')
k('n', '<A-1>', ':tabfirst<CR>')
k('n', '<A-0>' , ':tablast<CR>')
-- k("n", "<S-l>", ":bnext<CR>", opts)
-- k("n", "<S-h>", ":bprevious<CR>", opts)

-- lsp infos
k('n', 'gf', vim.lsp.buf.hover)
k('n', 'gl', vim.diagnostic.open_float)
k('n', 'gr', vim.lsp.buf.references)
k('n', 'gi', vim.lsp.buf.implementation)

-- Move Text up and down
k("v", '<A-Up>', ":move '<-2<CR>gv-gv", opts)
k("v", '<A-Down>', ":move '>+1<CR>gv-gv", opts)
k("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)
k("x", "<A-Down>", ":move '>+1<CR>gv-gv", opts)

-- Copy and Paste to/from specific registry
