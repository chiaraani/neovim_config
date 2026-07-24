return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      local config = require("nvim-treesitter.config")
      local langs = {
        "lua", "html", "css", "ruby", "vue", "vimdoc", "vim", "sql",
        "json", "javascript", "yaml", "embedded-template"
      }
      config.setup({
        ensure_installed = langs,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false
        },
        indent = { enable = true }
      })

      local autocmd_langs = {
        "lua", "html", "css", "ruby", "vue", "vimdoc", "vim", "sql", "embedded-template"
      }

      vim.api.nvim_create_autocmd('FileType', {
        pattern = autocmd_langs,
        callback = function() vim.treesitter.start() end,
      })
    end
  }
}
