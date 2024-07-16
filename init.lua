local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("core.keymap")
require("core.options")
require("lazy").setup({{import = "plugins"}})
require("core.style")
require("core.treesitter")
require("core.lsp")
require("core.complete")
require("core.autopairs")
require("core.common")
require("core.gitsigns")
require("core.bufferline")
require("core.telescope")
require("core.style")
require("core.competitest")
require("core.notify")
require("core.blankline")
require("core.dap")
require("core.dap_ui")
require("core.keymap_afterload")
