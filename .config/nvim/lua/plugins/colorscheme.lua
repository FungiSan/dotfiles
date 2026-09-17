return {
  -- 1. Download and add the theme plugin
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false, -- Load immediately during startup
    priority = 1000, -- Load before all other plugins
  },

  -- 2. Configure LazyVim to use it as the default
  {
    "LazyVim/LazyVim",
    opts = {
--      colorscheme = "gruvbox",
    },
  },
}
