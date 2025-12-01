local function opts(desc)
  return {
    noremap = true,
    silent = true,
    desc = desc
  }
end
local k = vim.keymap.set



-- Remap Leader
k("", "<space>", "<Nop>", opts('Set leader to space'))
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
k("n", "<Esc><Esc>", ":noh<CR>", opts('Disables Text highlighting if active'))
k("n", "<leader>w", ":w<CR>", opts('writes to file'))
k("n", "cd", ":cd %:p:h<CR>", opts('Changes directory of session to current buffer'))

-- Code Diff
k("n", "<leader>cd", ":CodeDiff<CR>", opts('Shows code diff in git repo'))

-- Themefy
k("n", "<leader>f", ":Themefy<CR>", opts('Opens Theme selector'))

-- Fuzzy Finder
k("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = 'Find files with telescope' })
k("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = 'Grep lines through telescope' })
k("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = 'List Buffers, with telescope' })
k("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = 'Fuzzy find help' })

-- File Tree
k('n', '<leader>e', '<cmd>Neotree toggle<CR>', { desc = 'Open filetree' })

-- Terminal Mode
k('n', '<leader>t', '<cmd>ToggleTerm<CR>', { desc = '' }) -- To close again ctrl + d
k('t', '<Esc>', '<C-\\><C-n>')

-- Indent Mode
k('v', '<', '<gv', opts('Indent to the right in v mode'))
k('v', '>', '>gv', opts('Indent to the left in v mode'))

-- Better Window Managment
k('n', '<S-h>', '<C-w>h', opts('Move to window to the left'))
k('n', '<S-j>', '<C-w>j', opts('Move to window to the under'))
k('n', '<S-k>', '<C-w>k', opts('Move to window to the upper'))
k('n', '<S-l>', '<C-w>l', opts('Move to window to the right'))

-- Resize with arrows
k("n", "<C-Up>", ":resize -2<CR>", opts('resize to up'))
k("n", "<C-Down>", ":resize +2<CR>", opts('resize to down'))
k("n", "<C-Right>", ":vertical resize -2<CR>", opts('resize to left'))
k("n", "<C-Left>", ":vertical resize +2<CR>", opts('resize to right'))


-- Create Windows
k('n', '<leader>v', ':vsplit <CR>', opts('Creates vertical split pane'))
k('n', '<leader>h', ':horizontal split <CR>', opts('Creates horizontal split pane'))
k('n', '<leader>n', ':tabnew <CR>', opts('Creates new tab'))

-- Close Windows
k('n', '<leader>X', ':qa<CR>', opts('Closes entire nvim'))
if #vim.api.nvim_list_wins() <= 1 then
  k('n', '<leader>x', ':q<CR>', opts('Closes nvim'))
else
  k('n', '<leader>x', '<C-w>c', opts('Closes the window'))
end

-- Navigate Tabs
k('n', '<S-k>', ':tabn<CR>') 
k('n', '<S-j>', ':tabp<CR>')
k('n', '<A-0>', ':tabfirst<CR>')
k('n', '<A-$>' , ':tablast<CR>')
-- k("n", "<S-l>", ":bnext<CR>", opts)
-- k("n", "<S-h>", ":bprevious<CR>", opts)

-- lsp infos
k('n', 'gf', vim.lsp.buf.hover, { desc = 'show hover of selected element'})
k('n', 'gl', vim.diagnostic.open_float, { desc = 'show lsp notifications of selected element'})
k('n', 'gr', vim.lsp.buf.references, { desc = 'show references of selected element'})
k('n', 'gi', vim.lsp.buf.implementation, { desc = 'show implementation of selected element'})

-- Move Text up and dow
k("v", '<C-k>', ":move '<-2<CR>gv-gv", opts('Moves text Up'))
k("v", '<C-j>', ":move '>+1<CR>gv-gv", opts('Moves text Down'))
k("x", "<C-k>", ":move '<-2<CR>gv-gv", opts('Moves text Up'))
k("x", "<C-j>", ":move '>+1<CR>gv-gv", opts('Moves text Down'))

-- Copy and Paste to/from specific registry
