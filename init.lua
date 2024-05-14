--	    _____________    ________  ___
--	   / ____/_  __/ |  / /  _/  |/  /
--	  / /_    / /  | | / // // /|_/ /
--	 / __/   / /   | |/ // // /  / /
--	/_/     /_/    |___/___/_/  /_/

-- See `./lua/config/options.lua`
require "config.options"

-- See `./lua/config/keymaps.lua`
require "config.keymaps"
-- [[ Install `lazy.nvim` plugin manager ]]
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "--single-branch",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  }
end
vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup {
  spec = {
    -- add FtVim and import its plugins
    { "FtVim/FtVim", import = "ftvim.plugins" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  checker = { enabled = true, notify = true }, -- automatically check for plugin updates
}

-- <leader>uc for select colorschemes
require "settings.theme"
