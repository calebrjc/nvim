return {
    -- TODO: Add comment.nvim?
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {},
    },
    {
        "https://github.com/stevearc/oil.nvim",
        opts = {
            columns = {
                "icon",
                "permissions",
                "size",
                "mtime",
            },
        },
        keys = {
            { "\\", function() require("oil").toggle_float() end, desc = "Toggle Oil floating window" },
        },
    },
    {
        "abecodes/tabout.nvim",
        lazy = false,
        opts = {
            tabkey = "<Tab>",
            backwards_tabkey = "<S-Tab>",
            act_as_tab = true,
            act_as_shift_tab = false,
            default_tab = "<C-t>",
            default_shift_tab = "<C-d>",
            enable_backwards = true,
            completion = true,
            tabouts = {
                { open = '"', close = '"' },
                { open = "'", close = "'" },
                { open = "`", close = "`" },
                { open = "(", close = ")" },
                { open = "[", close = "]" },
                { open = "{", close = "}" }
            },
            ignore_beginning = false,
            exclude = {},
        },
        opt = true,
        event = "InsertCharPre",
        priority = 1000,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        main = "nvim-treesitter.configs",
        opts = {
            ensure_installed = { "bash", "c", "diff", "html", "lua", "luadoc", "markdown", "markdown_inline", "query", "vim", "vimdoc" },
            auto_install = true,
            highlight = {
                enable = true,

                -- Some languages depend on vim"s regex highlighting system (such as Ruby) for indent rules.
                --  If experiencing weird indenting issues, add the language to the list of 
                --  additional_vim_regex_highlighting and disabled languages for indent.
                additional_vim_regex_highlighting = { "ruby" },
            },
            indent = { enable = true, disable = { "ruby" } },
        },
    },
}
