return {
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
    opts = {
      options = {
        mode = "tabs",
        -- separator_style = "slant",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },
  --animation
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = false,
      }
    end,
  },
  --dashboard
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[ 
██████╗  ██████╗ ██╗  ██╗ ██████╗  █████╗ ██╗      █████╗ 
██╔══██╗██╔═══██╗██║ ██╔╝██╔═══██╗██╔══██╗██║     ██╔══██╗
██████╔╝██║   ██║█████╔╝ ██║   ██║███████║██║     ███████║
██╔══██╗██║   ██║██╔═██╗ ██║   ██║██╔══██║██║     ██╔══██║
██║  ██║╚██████╔╝██║  ██╗╚██████╔╝██║  ██║███████╗██║  ██║
╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
      ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
