require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = {  -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false,        -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = true,         -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.01,      -- percentage of the shade to apply to the inactive window
    },
    no_italic = false,          -- Force no italic
    no_bold = false,            -- Force no bold
    no_underline = false,       -- Force no underline
    styles = {                  -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = {},          -- Change the style of comments
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {
        mocha = {
            base = "#000000",
            mantle = "#0E0E19",
            crust = "#030310",
        },
    },
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme("catppuccin")
