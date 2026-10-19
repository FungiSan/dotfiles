return {
  {
    "f-person/auto-dark-mode.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("auto-dark-mode").setup({
        update_interval = 1000, -- частота проверки в миллисекундах
        set_dark_mode = function()
          vim.api.nvim_set_option_value("background", "dark", {})
          vim.cmd("colorscheme tokyonight-moon") -- укажите свою темную тему
        end,
        set_light_mode = function()
          vim.api.nvim_set_option_value("background", "light", {})
          vim.cmd("colorscheme tokyonight-day") -- укажите свою светлую тему
        end,
      })
    end,
  },
}
