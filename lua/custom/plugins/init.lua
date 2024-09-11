-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.keymap.set('n', '<leader>e', '<cmd>Exp<CR>')
vim.opt.shell = 'powershell'
vim.opt.shellxquote = ''
vim.opt.shellcmdflag = '-nologo -noprofile -ExecutionPolicy RemoteSigned -command'
return {}
