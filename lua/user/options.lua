local options = {
  backup = false,
  clipboard = "unnamedplus",
  cmdheight = 1,
  completeopt = { "menuone", "noselect" },
  conceallevel = 0,
  -- colorcolumn = "80",
  -- colorcolumn = "120",
  fileencoding = "utf-8",
  hlsearch = true,
  ignorecase = true,
  mouse = "a",
  pumheight = 10,
  showmode = false,
  showtabline = 0,
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  termguicolors = true,
  timeoutlen = 100,
  undofile = true,
  updatetime = 300,
  writebackup = false,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  cursorline = true,
  number = true,
  laststatus = 3,
  showcmd = false,
  ruler = false,
  relativenumber = true,
  numberwidth = 4,
  signcolumn = "yes",
  wrap = true,
  scrolloff = 10,
  sidescrolloff = 10,
  fixendofline = false
}
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.fillchars.eob=" "

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end
