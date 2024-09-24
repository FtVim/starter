--          _____________    ________  ___
--         / ____/_  __/ |  / /  _/  |/  /
--        / /_    / /  | | / // // /|_/ /
--       / __/   / /   | |/ // // /  / /
--      /_/     /_/    |___/___/_/  /_/

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
        vim.fn.system({
                "git",
                "clone",
                "--filter=blob:none",
                "--single-branch",
                "https://github.com/folke/lazy.nvim.git",
                lazypath,
        })
end

vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup({
        spec = {
                -- add FtVim and import its plugins
                {
                        "FtVim/FtVim",
                        lazy = false,
                        branch = "main",
                        import = "ftvim.plugins",
                        config = function()
                                require("options")
                        end,
                },
                -- import/override with your plugins
                { import = "plugins" },
        },
        checker = { enabled = true, notify = true }, -- automatically check for plugin updates
})

vim.cmd("colorscheme " .. ftvim.colorscheme)

require("ftvim.utils.modules").learn_to_move()

vim.schedule(function()
        require("keymaps")
end)

vim.cmd("TSToggle highlight")
