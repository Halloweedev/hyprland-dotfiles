return {
  "rcarriga/nvim-notify",
  event = "VeryLazy",
  opts = {
    stages = "fade_in_slide_out",
    timeout = 3000,
    render = "default",
    background_colour = "#000000",
  },
  init = function()
    vim.notify = require("notify")
  end,
}
