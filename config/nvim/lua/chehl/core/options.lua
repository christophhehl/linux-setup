local opt = vim.opt

opt.number           = true

opt.autoindent       = true
opt.smartindent      = true

opt.wrap             = false

opt.ignorecase       = true
opt.smartcase        = true
opt.incsearch        = true
opt.hlsearch         = true

opt.splitright       = true -- split vertical window to the right
opt.splitbelow       = true -- split horizontal window to the bottom

opt.swapfile         = false -- turn off swapfile

opt.foldcolumn = "1"
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"

opt.errorbells = false

opt.history = 1000

opt.spell = true

opt.spelllang = "en_us"
