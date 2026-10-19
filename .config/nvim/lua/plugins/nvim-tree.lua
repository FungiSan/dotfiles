return {
  {
    "nvim-tree/nvim-tree.lua",
    enabled = true,
    version = "*",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
        filters = {
          --- display dot files in file explorer, hopefully
          dotfiles = true,
          git_ignored = false,
        },
        git = {
          ignore = false,
        },
      })
    end,
  },
}
