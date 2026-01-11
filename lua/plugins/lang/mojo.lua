---@type LazySpec
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
      parser_config.mojo = {
        install_info = {
          url = "https://github.com/modularml/tree-sitter-mojo",
          files = { "src/parser.c", "src/scanner.c" },
          branch = "main",
        },
        filetype = "mojo",
      }

      opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "mojo" })
    end,
  },
}
