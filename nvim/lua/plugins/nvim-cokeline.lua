return {
  "noib3/nvim-cokeline",
  event = "BufReadPre",
  opts = {
    show_if_buffers_are_at_least = 2,
    buffers = {
      focus_on_delete = "next",
      new_buffers_position = "next",
    },
    -- add your custom styling or mappings here
  },
}
