return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.keymap.set('n', '<C-f>', function()
        vim.lsp.buf.format()
      end, { desc = 'Format with LSP' })

      vim.diagnostic.config({
        virtual_text = true,
      })

      vim.lsp.enable('vue_ls')
      vim.lsp.enable('yamlls')
      vim.lsp.enable('solargraph')
      -- vim.lsp.enable('rubocop')
      vim.lsp.enable('vimls')
      vim.lsp.enable('lua_ls')
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" } }
          }
        }
      })
    end
  }
}
