local cmp = require "cmp"
return {
  experimental = {
    ghost_text = true,
  },
  mapping = {
    ["<C-k>"] = cmp.config.disable,
    ["<C-j>"] = cmp.config.disable,
  },
}
