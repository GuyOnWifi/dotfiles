local cfg = vim.fn.expand("~/.markdownlint-cli2.yaml")

return {
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      opts.linters = opts.linters or {}
      opts.linters["markdownlint-cli2"] =
        vim.tbl_deep_extend("force", opts.linters["markdownlint-cli2"] or {}, { args = { "--config", cfg } })
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        ["markdownlint-cli2"] = {
          prepend_args = { "--config", cfg },
        },
      },
    },
  },
}
