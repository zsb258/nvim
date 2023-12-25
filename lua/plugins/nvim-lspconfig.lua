return {
  "neovim/nvim-lspconfig",
  opts = {
    setup = {
      clangd = function(_, opts)
        opts.capabilities.offsetEncoding = { "utf-16" }
      end,
      racket_langserver = function()
        require("lazyvim.util").lsp.on_attach(function(client)
          client.server_capabilities.documentFormattingProvider = true
        end)
      end,
    },
    servers = {
      racket_langserver = {
        setup = {
          cmd = { "racket", "-l", "racket-langserver" },
          filetypes = { "racket", "scheme" },
          single_file_support = true,
        },
        settings = {
          formatOnSave = {
            allFeatures = true,
            command = "raco",
            extraArgs = { "fmt", "-i" },
          },
        },
      },
    },
  },
}
