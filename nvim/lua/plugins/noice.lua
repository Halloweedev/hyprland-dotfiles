return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = { "MunifTanjim/nui.nvim" },
  opts = {
    notify = {
      enabled = true,
      view = "notify",
    },
    messages = {
      enabled = true,
    },
    cmdline = {
      enabled = true,
    },
    popupmenu = {
      enabled = true,
      backend = "nui",
    },
    routes = {},
  },
}
