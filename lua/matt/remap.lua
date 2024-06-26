local nnoremap = require("matt.keymap").nnoremap
local builtin = require("telescope.builtin")

nnoremap("<leader>pv", "<cmd>Ex<CR>")
nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<CR>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<CR>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<CR>")
nnoremap("<leader>af", function() require("harpoon.mark").add_file() end, silent)
nnoremap("<leader>tm", function() require("harpoon.ui").toggle_quick_menu() end, silent)
nnoremap("<leader>ge", function() require("harpoon.ui").nav_file(1) end, silent)
nnoremap("<leader>gr", function() require("harpoon.ui").nav_file(2) end, silent)
nnoremap("<leader>gt", function() require("harpoon.ui").nav_file(3) end, silent)
nnoremap("<leader>bb","<cmd>:buffers<cr>:b<space>")
nnoremap("<leader>y", [["+y]])
nnoremap("<leader>Y", [["+Y]])
