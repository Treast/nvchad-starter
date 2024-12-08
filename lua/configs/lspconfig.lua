-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "phpactor" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}

-- phpactor
lspconfig.phpactor.setup {
  on_attach = on_attach,
  init_options = {
    ["code_transform.refactor.generate_accessor.prefix"] = "get",
    ["code_transform.refactor.generate_accessor.upper_case_first"] = true,
    ["code_transform.refactor.generate_mutator.fluent"] = true,
  },
}
