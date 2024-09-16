-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.shell = 'powershell'
vim.opt.shellxquote = ''
vim.opt.shellcmdflag = '-nologo -noprofile -ExecutionPolicy RemoteSigned -command'
require('nvim-treesitter.install').compilers = { 'clang', 'gcc' }
return { {
  'amrbashir/nvim-docs-view',
  lazy = true,
  cmd = 'DocsViewToggle',
  opts = {
    position = 'right',
    width = 60,
  },
} }
