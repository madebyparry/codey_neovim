
vim.cmd [[ packadd nlua.nvim ]]

local lsp = require('lspconfig')
local completion = require('completion')

local mapper = function(mode, key, result)
  vim.api.nvim_buf_set_keymap(0, mode, key, "<cmd>lua "..result.."<cr>", {noremap = true, silent = true})
end

local custom_attach = function()
  completion.on_attach()
  -- Move cursor to the next and previous diagnostic
  mapper('n', '<leader>dn', 'vim.lsp.diagnostic.goto_next()')
  mapper('n', '<leader>dp', 'vim.lsp.diagnostic.goto_prev()')
end

lsp.pyls.setup{
  on_attach = custom_attach
}

local configs = require('lspconfig/configs')
configs.ocamllsp = {
  default_config = {
    cmd = { 'ocamllsp' };
    filtypes = {'ocaml'};
    root_dir = function(fname)
      return lsp.util.find_git_ancestor(fname) or vim.loop.os_homedir()
    end;
    settings = {};
  }
}

lsp.ocamllsp.setup{
  on_attach = custom_attach
}
