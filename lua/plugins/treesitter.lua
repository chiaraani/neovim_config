return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      local config = require("nvim-treesitter.config")
      config.setup({
    	ensure_installed = {"lua", "javascript", "html", "css", "ruby", "vue", "vimdoc", "vim"},
 	    highlight = { enable = true },
 	      indent = { enable = true }
     	})
    end
  }
}
