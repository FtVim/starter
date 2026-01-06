-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    lazyrepo,
    lazypath,
  }
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim with FtVim
require("lazy").setup {
  spec = {
    -- Import FtVim and its plugins
    {
      "FtVim/FtVim",
      import = "ftvim.plugins",
    },

    -- To enable 42 support (header, formatter, norminette integration):
    -- { import = "ftvim.plugins.extras.lang.42" },

    -- To enable GitHub Copilot:
    -- { import = "ftvim.plugins.extras.copilot" },

    -- Import your custom plugins from lua/plugins/
    { import = "plugins" },
  },
  defaults = {
    lazy = false,
    version = false, -- always use the latest git commit
  },
  install = {
    colorscheme = { "catppuccin", "habamax" },
  },
  checker = {
    enabled = true, -- check for plugin updates periodically
    notify = false, -- don't spam notifications
  },
  performance = {
    rtp = {
      -- Disable some built-in plugins we don't need
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
}
