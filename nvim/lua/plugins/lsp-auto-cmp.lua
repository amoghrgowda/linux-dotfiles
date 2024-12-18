return {
  -- nvim-cmp for completion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",  -- LSP source for completion
      "hrsh7th/cmp-buffer",     -- Buffer source for completion
      "hrsh7th/cmp-path",       -- Path source for completion
    },
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        snippet = {
          expand = function(args)
            -- No snippet engine, leave this empty
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = {
          { name = "nvim_lsp" }, -- LSP source for auto-completion
          { name = "buffer" },   -- Buffer source for completion
          { name = "path" },     -- Path source for completion
        },
      })
    end
  }
  }
