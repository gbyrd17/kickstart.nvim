-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_compiler_latexmk = {
        callback = 1,
        continuous = 1,
        executable = 'xelatex',
        options = {
          '-verbose',
          '-file-line-error',
          '-synctex=1',
          '-interaction=nonstopmode',
        },
      }
      vim.cmd 'set conceallevel=2'
      local namespace = vim.api.nvim_create_namespace 'latex-namespace'
      vim.api.nvim_set_hl(namespace, 'Conceal', { bg = 'NONE', fg = '#73D0FF' })
      vim.g.vimtex_syntax_conceal = {
        sections = 1,
      }
    end,
    keys = {
      { '<localLeader>l', '', desc = '+vimtex' },
    },
  },
  {
    'SirVer/ultisnips',
  },
}
