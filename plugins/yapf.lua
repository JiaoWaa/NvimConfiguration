local mason_null_ls = require "mason-null-ls"
local yapf = require "null-ls.builtins.formatting.yapf"
local null_reg = require("null-ls").register

return {
  mason_null_ls.setup {
    handlers = {
      -- set formatter's indent to 2
      yapf = function() null_reg(yapf.with { extra_args = { "--style", "{based_on_style: pep8, indent_width: 2}" } }) end,
    },
  },
}
