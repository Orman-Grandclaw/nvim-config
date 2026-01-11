---@type LazySpec
return {
  {
    "AstroNvim/astrolsp",
    init = function()
      vim.filetype.add({
        extension = {
          mojo = "mojo",
        },
      })
    end,
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      vim.list_extend(opts.servers, {
        "mojo",
      })
    end,
  },
}
