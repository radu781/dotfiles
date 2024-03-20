require('general.remap')
require('general.set')

if vim.g.vscode then
  require('vscode.remap')
  require('vscode.set')
else
  require('vim.remap')
  require('vim.set')
end
