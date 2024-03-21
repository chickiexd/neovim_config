vim.env.PATH = vim.env.PATH .. ":/usr/bin/node"
vim.env.PATH = vim.env.PATH .. ":/usr/bin/python3"
vim.g.python3_host_prog = "/usr/bin/python3"
require("chickie.globals")
require("lazy-bootstrap")
require("chickie")
