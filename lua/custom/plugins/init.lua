-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.keymap.set('n', '<leader>dt', '<cmd>diffthis<CR>', { desc = '[D]iff[T]his' })
vim.keymap.set('n', '<leader>do', '<cmd>diffoff<CR>', { desc = '[D]iff[O]ff' })

if package.config:sub(1, 1) == '\\' then
  vim.opt.shell = vim.fn.executable 'pwsh' == 1 and 'pwsh' or 'powershell'
  vim.opt.shellxquote = ''
  vim.opt.shellcmdflag = '-nologo -noprofile -ExecutionPolicy RemoteSigned -command'
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
    lazy = false,
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
}
