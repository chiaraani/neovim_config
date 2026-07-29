return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.config")

      local langs = {
        "lua", "css", "ruby", "vue", "vimdoc", "vim", "sql",
        "json", "javascript", "yaml", "embedded-template"
      }

      config.setup({
        ensure_installed = langs,
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
        auto_install = true
      })

      vim.api.nvim_create_autocmd('FileType', {
        pattern = langs,
        callback = function() vim.treesitter.start() end,
      })
    end
  }
}
