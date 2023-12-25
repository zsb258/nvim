return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      racket = { "raco_fmt" },
    },
    formatters = {
      raco_fmt = {
        command = "raco",
        args = { "fmt" },
        condition = function(_, ctx)
          return vim.fs.basename(ctx.filename) ~= ".rkt"
        end,
      },
    },
  },
}
