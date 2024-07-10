vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode with jj" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>sn", ":vnew<CR>", { desc = "Split window and create new file" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sc", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

keymap.set("n", "<leader>wk", "<cmd>wincmd k<CR>", { desc = "Switch selected window" })
keymap.set("n", "<leader>wj", "<cmd>wincmd j<CR>", { desc = "Switch selected window" })
keymap.set("n", "<leader>wh", "<cmd>wincmd h<CR>", { desc = "Switch selected window" })
keymap.set("n", "<leader>wl", "<cmd>wincmd l<CR>", { desc = "Switch selected window" })

keymap.set("n", "<leader>rh", "<cmd>resize +2<CR>", { desc = "Resize window" })
keymap.set("n", "<leader>rj", "<cmd>vertical resize +2<CR>", { desc = "Resize window" })
keymap.set("n", "<leader>rk", "<cmd>vertical resize -2<CR>", { desc = "Resize window" })
keymap.set("n", "<leader>rl", "<cmd>resize -2<CR>", { desc = "Resize window" })
