return {
    {
        "nvim-mini/mini.files",
        version = '*',
        opts = {},
        keys = {
            {
                "<leader>e",
                mode = "n",
                function()
                    require("mini.files").open()
                end,
                desc = "Opens mini files"
            },
        },
    },
    {
        "stevearc/oil.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            default_file_explorer = true,
            columns = { "icon" },
            view_options = {
                show_hidden = true,
            },
            skip_confirm_for_simple_edits = true,
            keymaps = {
                ["<C-h>"] = false,
                ["<C-l>"] = false,

                ["<C-x>"] = "actions.select_split",
                ["<C-t>"] = "actions.select_tab",

                ["q"] = "actions.close",
                ["<BS>"] = "actions.parent",
            }
        },
        keys = {
            { "-", "<cmd>Oil<CR>", desc = "Open current dir in Oil" },
        },
    },
    {
        "mbbill/undotree",
        lazy = false,
        keys = {
            { "<leader>u", mode = "n", "<cmd>UndotreeToggle<CR>", desc = "Open Undotree" }
        }
    }
}
