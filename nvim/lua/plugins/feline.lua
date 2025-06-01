return {
    "feline-nvim/feline.nvim",
    dependencies = {},
    opts = function()
        local colors = {
            bg = "#FBF9F6",
            fg = "#2C2C2C",
            red = "#EB1C2B",
            green = "#76B947",
            yellow = "#E5C07B",
            blue = "#61AFEF",
            gray = "#999999",
        }

        local vi_mode_colors = {
            NORMAL = colors.blue,
            INSERT = colors.green,
            VISUAL = colors.red,
            REPLACE = colors.yellow,
            COMMAND = colors.gray,
        }

        local components = {
            active = {
                -- LEFT
                {
                    { 
                        -- don't use the icon but write texts like NORMAL...
                        provider = function()
                            return " " .. require("feline.providers.vi_mode").get_vim_mode() .. " "
                        end,

                        hl = function()
                            local mode = require("feline.providers.vi_mode").get_vim_mode()
                            return {
                                fg = colors.bg,
                                bg = vi_mode_colors[mode] or colors.gray,
                                style = "bold",
                            }
                        end,
                        left_sep = " ",
                        right_sep = " ",
                    },
                    {
                        provider = "file_info",
                        hl = { fg = colors.fg, bg = colors.bg },
                        left_sep = " ",
                        right_sep = " ",
                    },
                },
                -- RIGHT
                {
                    {
                        provider = "diagnostic_errors",
                        enabled = function()
                            return require("feline.providers.lsp").diagnostics_exist("Error")
                        end,
                        hl = { fg = colors.red, bg = colors.bg },
                    },
                    {
                        provider = "diagnostic_warnings",
                        enabled = function()
                            return require("feline.providers.lsp").diagnostics_exist("Warn")
                        end,
                        hl = { fg = colors.yellow, bg = colors.bg },
                    },
                    {
                        provider = "position",
                        hl = { fg = colors.fg, bg = colors.bg },
                        left_sep = " ",
                        right_sep = " ",
                    },
                    {
                        provider = "line_percentage",
                        hl = { fg = colors.fg, bg = colors.bg },
                        right_sep = " ",
                    },
                },
            },
            inactive = {},
        }

        return {
            theme = colors,
            components = components,
            vi_mode_colors = vi_mode_colors,
        }
    end,
}

