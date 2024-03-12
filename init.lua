vim.env.PATH = vim.env.PATH .. ":/usr/bin/node"
vim.env.PATH = vim.env.PATH .. ":/usr/bin/python3"
vim.g.python3_host_prog = "/usr/bin/python3"
vim.g.mapleader = " "
require("lazy-bootstrap")
require("chickie")
