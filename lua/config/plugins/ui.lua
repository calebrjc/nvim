return {
    {
        'akinsho/bufferline.nvim',
        version = "*",
        lazy = false,
        dependencies = { 'nvim-tree/nvim-web-devicons', "catppuccin/nvim" },
        opts = {
            options = {
                themable = true,
                separator_style = "slant",
            },
            highlights = require("catppuccin.special.bufferline").get_theme(),
        },
        keys = {
            {
                "<A-l>",
                "<cmd>BufferLineCycleNext<CR>",
                desc = "Cycle to Next Buffer",
            },
            {
                "<A-h>",
                "<cmd>BufferLineCyclePrev<CR>",
                desc = "Cycle to Next Buffer",
            },
        },
    },
    {
        "j-hui/fidget.nvim",
        opts = {
            notification = { override_vim_notify = true },
        },
        config = function(_, opts)
            require("fidget").setup(opts)
            vim.notify = require("fidget").notify
        end
    },
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            signs = {
                add = { text = "+" },
                change = { text = "~" },
                delete = { text = "_" },
                topdelete = { text = "‾" },
                changedelete = { text = "~" },
            },
        },
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            lsp = {
                override = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    ["vim.lsp.util.stylize_markdown"] = true,
                },
            },
            presets = {
                command_palette = true,
                long_message_to_split = true,
                lsp_doc_border = false,
            },
        },
        dependencies = { "MunifTanjim/nui.nvim" }
    },
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            bigfile = { enabled = true },
            dashboard = { enabled = true },
            indent = { enabled = true },
            input = { enabled = true },
            picker = { enabled = true },
            -- notifier = { enabled = true },
            quickfile = { enabled = true },
            scope = { enabled = true },
            scroll = { enabled = true },
            statuscolumn = { enabled = true },
            terminal = { enabled = true },
            words = { enabled = true },
        },
        keys = {
            { "<leader>sh", function() Snacks.picker.help() end, desc = "Help Pages" },
            { "<leader>sk", function() Snacks.picker.keymaps() end, desc = "Keymaps" },
            { "<leader>sf", function() Snacks.picker.files() end, desc = "Find Files" },
            { "<leader>sg", function() Snacks.picker.grep() end, desc = "Grep" },
            { "<leader>sd", function() Snacks.picker.diagnostics() end, desc = "Diagnostics" },
            { "<leader><space>", function() Snacks.picker.buffers() end, desc = "Active Buffers" },
            { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer" },
        },
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            delay = 200,
            icons = {
                mappings = vim.g.have_nerd_font,
                keys = vim.g.have_nerd_font and {} or {
                    Up = "<Up> ",
                    Down = "<Down> ",
                    Left = "<Left> ",
                    Right = "<Right> ",
                    C = "<C-…> ",
                    M = "<M-…> ",
                    D = "<D-…> ",
                    S = "<S-…> ",
                    CR = "<CR> ",
                    Esc = "<Esc> ",
                    ScrollWheelDown = "<ScrollWheelDown> ",
                    ScrollWheelUp = "<ScrollWheelUp> ",
                    NL = "<NL> ",
                    BS = "<BS> ",
                    Space = "<Space> ",
                    Tab = "<Tab> ",
                    F1 = "<F1>",
                    F2 = "<F2>",
                    F3 = "<F3>",
                    F4 = "<F4>",
                    F5 = "<F5>",
                    F6 = "<F6>",
                    F7 = "<F7>",
                    F8 = "<F8>",
                    F9 = "<F9>",
                    F10 = "<F10>",
                    F11 = "<F11>",
                    F12 = "<F12>",
                },
            },
            -- Document existing key chains
            spec = {
                { "<leader>s", group = "[S]earch" },
                { "<leader>t", group = "[T]oggle" },
                { "<leader>h", group = "Git [H]unk", mode = { "n", "v" } },
            },
        },
        keys = {
	        {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
    	},
    },
}
