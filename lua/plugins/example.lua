-- Example plugin configurations
-- Add your own plugins here!
--
-- To add a plugin, return it from this file:
--   return {
--     "author/plugin-name",
--     opts = { ... },
--   }
--
-- Or return multiple plugins:
--   return {
--     { "author/plugin-one" },
--     { "author/plugin-two", opts = { ... } },
--   }

-- Uncomment the examples below to enable them:

return {
  -- Add additional colorschemes
  -- { "rose-pine/neovim", name = "rose-pine" },
  -- { "EdenEast/nightfox.nvim" },

  -- Disable a plugin that FtVim includes by default
  -- { "folke/flash.nvim", enabled = false },

  -- Override FtVim plugin settings
  -- {
  --   "nvim-neo-tree/neo-tree.nvim",
  --   opts = {
  --     filesystem = {
  --       filtered_items = {
  --         visible = true,
  --       },
  --     },
  --   },
  -- },

  -- Add a new plugin
  -- {
  --   "folke/zen-mode.nvim",
  --   cmd = "ZenMode",
  --   opts = {
  --     plugins = {
  --       twilight = { enabled = false },
  --     },
  --   },
  --   keys = {
  --     { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
  --   },
  -- },

  -- Language-specific plugins
  -- {
  --   "mrcjkb/rustaceanvim",
  --   version = "^4",
  --   ft = { "rust" },
  -- },
}
