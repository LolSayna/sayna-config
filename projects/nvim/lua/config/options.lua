-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.relativenumber = false
vim.g.snacks_animate = false
vim.opt.wrap = true

-- tabs
vim.o.tabstop = 2 -- A TAB character looks like 4 spaces
vim.o.expandtab = false -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 2 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 2 -- Number of spaces inserted when indenting

vim.g.rustaceanvim = {
  -- LSP configuration
  server = {
    default_settings = {
      -- rust-analyzer language server configuration
      ["rust-analyzer"] = {
        check = {
          allTargets = false,
        },
        cargo = {
          target = "build/i686-rstubs-kernel.json",
        },
      },
    },
  },
}
