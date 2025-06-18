local ls = require("luasnip")

vim.keymap.set({ "i", "s" }, "<Tab>", function()
  return ls.expand_or_jumpable()
      and "<Plug>luasnip-expand-or-jump"
      or "<Tab>"
end, { expr = true, silent = true })

vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
  return ls.jumpable(-1)
      and "<Plug>luasnip-jump-prev"
      or "<S-Tab>"
end, { expr = true, silent = true })
