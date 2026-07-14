return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      local config = require("nvim-treesitter.config")
      local preferred_langs = { "lua", "javascript", "html", "css", "ruby", "vue", "vimdoc", "vim" }
      config.setup({
        ensure_installed = preferred_langs,
        highlight = { enable = true },
        indent = { enable = true }
      })


      vim.api.nvim_create_autocmd('FileType', {
        pattern = preferred_langs,
        callback = function() vim.treesitter.start() end,
      })
    end
  }
}
