-- Use following commadn to install language server in arch using pacman, paru(AUR) and npm

-- sudo pacman -S pyright bash-language-server lua-language-server ccls haskell-language-server typescript-language-server 
-- paru -S arduino-language-server cmake-language-server-git cssmodules-language-server jdtls
-- npm i -g vscode-langservers-extracted 

-- If you dont use Arch then check the installation process for your distro.

local nvim_lsp = require('lspconfig')


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
end
local servers = {'pyright','jsonls'}

for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150,
    },
    root_dir = function() return vim.loop.cwd() end
  }
end
