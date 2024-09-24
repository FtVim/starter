vim.api.nvim_create_augroup("custom_buffer", { clear = true })

vim.api.nvim_create_autocmd("TermOpen", {
  group = "custom_buffer",
  pattern = "*",
  command = "startinsert | set winfixheight"
})

vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  group = "custom_buffer",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
  end,
})
