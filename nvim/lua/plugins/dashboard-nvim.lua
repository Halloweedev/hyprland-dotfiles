local header = {
  [[]],
  [[]],
  [[]],
  [[ ██     ██ ███████ ███████ ███████ ██████  ██    ██ ██ ██    ██ ███████ ]],
  [[ ██     ██ ██      ██      ██      ██   ██ ██    ██ ██ ██    ██ ██      ]],
  [[ ██  █  ██ █████   █████   █████   ██████  ██    ██ ██ ██    ██ █████   ]],
  [[ ██ ███ ██ ██      ██      ██      ██   ██ ██    ██ ██  ██  ██  ██      ]],
  [[  ███ ███  ███████ ██      ███████ ██   ██  ██████  ██   ████   ███████ ]],
  [[]],
  [[]],
  [[]],
}

local footer = {
  [[]],
  [[]],
  "Halloweed's Neovim",
}

local center = {
  {
    icon = "  ",
    desc = "Recently opened files ",
    action = "Telescope oldfiles",
    key = "r",
  },
  {
    icon = "  ",
    desc = "New file ",
    action = "ene | startinsert",
    key = "n",
  },
  {
    icon = "  ",
    desc = "Open config ",
    action = "edit ~/.config/nvim/init.lua",
    key = "c",
  },
  {
    icon = "  ",
    desc = "Find files ",
    action = "Telescope find_files",
    key = "f",
  },
}

return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  dependencies = {},

  opts = {
    --theme = 'hyper',          -- or 'doom', 'custom', etc
    disable_move = false,     -- disable move keymap for hyper theme
    shortcut_type = 'letter', -- shortcut keys: 'letter' or 'number'
    change_to_vcs_root = false,

    config = {
      header = header,
      shortcut = center,
      footer = footer,

      week_header = {
        enable = false,  -- show week number
      },
    },

    hide = {
      statusline = true,
      tabline = true,
      winbar = true,
    },
  },
}

