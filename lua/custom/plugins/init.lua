-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

vim.keymap.set('n', '<leader>dt', '<cmd>diffthis<CR>', { desc = '[D]iff[T]his' })
vim.keymap.set('n', '<leader>do', '<cmd>diffoff<CR>', { desc = '[D]iff[O]ff' })

if package.config:sub(1, 1) == '\\' then
  vim.o.shell = vim.fn.executable 'pwsh' == 1 and 'pwsh' or 'powershell'
  vim.o.shellxquote = ''
  vim.o.shellcmdflag = '-nologo -noprofile -ExecutionPolicy RemoteSigned -command'
end

require('nvim-treesitter.install').compilers = { 'clang', 'gcc' }
-- require('which-key').add(mappings, opts?)

return {
  -- {
  --   'IogaMaster/neocord',
  --   opts = {
  --     global_timer = true,
  --   },
  -- },
  {
    'OXY2DEV/markview.nvim',
    lazy = true,
  },
  -- {
  --   'kevinhwang91/nvim-ufo',
  --   dependencies = {
  --     'kevinhwang91/promise-async',
  --   },
  --   config = function()
  --     require('ufo').setup {
  --       provider_selector = function()
  --         return { 'treesitter', 'indent' }
  --       end,
  --     }
  --   end,
  -- },
  {
    'laytan/cloak.nvim',
    config = function()
      require('cloak').setup { enabled = true }
    end,
  },
  {
    'kdheepak/lazygit.nvim',
    lazy = true,
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    -- optional for floating window border decoration
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { '<leader>lg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
    },
  },
  {
    'rmagatti/auto-session',
    config = function()
      require('auto-session').setup {
        suppressed_dirs = { '~' },
      }
    end,
  },
  {
    'chipsenkbeil/distant.nvim',
    branch = 'v0.3',
    config = function()
      require('distant'):setup()
    end,
  },
}
