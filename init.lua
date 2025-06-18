require("config.lazy")
require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets" })
require("config.luasnip_keymaps")

vim.cmd[[colorscheme tokyonight]]
vim.cmd[[set nu]]
vim.cmd[[NvimTreeToggle]]
