return {
  {
    'princejoogie/dir-telescope.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
        require('dir-telescope').setup({
            -- These are the default options, you can customize them
            hidden = true,
            no_ignore = false,
            show_preview = true,
            follow_symlinks = false,
        })
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
  },
  {
    'nvim-telescope/telescope.nvim', 
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('telescope').setup({
        defaults = {
          vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
            '--hidden',
            '--glob', '!.git/**',
          },
        },
        pickers = {
          find_files = {
            hidden = true,
            find_command = { 'rg', '--files', '--hidden', '--glob', '!.git/**' },
          },
        },
      })
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
      vim.keymap.set('n', '<leader>r', builtin.oldfiles, { desc = 'Telescope recent files' })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
      vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = 'Telescope find string under the cursor' })
      vim.keymap.set('n', '<leader>fr', builtin.resume, { desc = 'Telescope resume' })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
      vim.keymap.set('n', '<leader>fd', '<cmd>Telescope dir live_grep<CR>', { noremap = true, silent = true })
      vim.keymap.set('n', '<leader>pd', '<cmd>Telescope dir find_files<CR>', { noremap = true, silent = true })
    end
  }
}
