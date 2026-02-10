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

-- Neogit
k("n", "<leader>gs", ":Neogit<CR>", { desc = 'Show git status' })
k("n", "<leader>gS", ":Neogit stash<CR>", { desc = 'stash current staged' })
k("n", "<leader>gc", ":Neogit commit<CR>", { desc = 'commit current changes' })
k("n", "<leader>gb", ":Neogit branch<CR>", { desc = 'switch branch' })
k("n", "<leader>gf", ":Neogit fetch<CR>", { desc = 'fetch from origin' })
k("n", "<leader>gr", ":Neogit rebase<CR>", { desc = 'rebase current branch' })
k("n", "<leader>gp", ":Neogit pull<CR>", { desc = 'pull from origin' })
k("n", "<leader>gP", ":Neogit push<CR>", { desc = 'push new commits' })
k("n", "<leader>gd", ":CodeDiff<CR>", { desc = 'Open CodeDiff' })

-- Make my life easier
k("n", "<Esc><Esc>", ":noh<CR>", opts('Disables Text highlighting if active'))
k("n", "<leader>w", ":w<CR>", opts('writes to file'))
k("n", "cd", ":cd %:p:h<CR>", opts('Changes directory of session to current buffer'))
k("n", "<leader>e", ":Neotree toggle<CR>", opts('Opens Neotree'))
k("n", "<leader>m", ":tabnext<CR>", opts('Move to next Tab'))

-- QoL Plugins
k("n", "<leader>cs", ":Themify<CR>", opts('Opens Theme selector'))
k('n', "<leader>b", ":FlyBuf<CR>", opts('Opens Buffer selection'))

-- Fuzzy Finder
k("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = 'Find files with telescope' })
k("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = 'Grep lines through telescope' })
k("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = 'List Buffers, with telescope' })
k("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = 'Fuzzy find help' })

-- Terminal Mode
k('n', '<leader>t', '<cmd>ToggleTerm<CR>', { desc = '' }) -- To close again ctrl + d
k('t', '<Esc>', '<C-\\><C-n>')

-- Indent Mode
k('v', '<', '<gv', opts('Indent to the right in v mode'))
k('v', '>', '>gv', opts('Indent to the left in v mode'))

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

-- k("n", "<S-l>", ":bnext<CR>", opts)
-- k("n", "<S-h>", ":bprevious<CR>", opts)

-- lsp infos
k('n', 'gf', vim.lsp.buf.hover, { desc = 'show hover of selected element' })
k('n', 'gl', vim.diagnostic.open_float, { desc = 'show lsp notifications of selected element' })
k('n', 'gr', vim.lsp.buf.references, { desc = 'show references of selected element' })
k('n', 'gi', vim.lsp.buf.implementation, { desc = 'show implementation of selected element' })

-- Move Text up and dow
k("v", '<C-k>', ":move '<-2<CR>gv-gv", opts('Moves text Up'))
k("v", '<C-j>', ":move '>+1<CR>gv-gv", opts('Moves text Down'))
k("x", "<C-k>", ":move '<-2<CR>gv-gv", opts('Moves text Up'))
k("x", "<C-j>", ":move '>+1<CR>gv-gv", opts('Moves text Down'))

-- Copy and Paste to/from specific registry
