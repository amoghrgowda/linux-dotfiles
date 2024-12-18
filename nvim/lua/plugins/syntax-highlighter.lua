return {
  "nvim-treesitter/nvim-treesitter",
  run = ":TSUpdate",  -- This will run `:TSUpdate` after installing
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = "rust",  -- Ensure Rust parser is installed
      highlight = {
        enable = true,             -- Enable syntax highlighting
        additional_vim_regex_highlighting = false,  -- Optional, disable Vim's regex highlighting (use Treesitter only)
      },
    })
  end,
}
