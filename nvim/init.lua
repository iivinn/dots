-- Hide section z of airline
vim.g["airline_section_z"] = "%3p%% %3l/%L:%3v"

vim.g.mapleader = "<Space>"

require("config.lazy")

vim.cmd 'colorscheme vague'
vim.cmd 'AirlineTheme transparent'
  
-- Get rid of ~
vim.wo.fillchars='eob: '

vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

vim.wo.number = true

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

