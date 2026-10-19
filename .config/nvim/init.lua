-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("lspconfig").gopls.setup({})
-- require("nvim-treesitter").setup({ git = { ignore = false } })
