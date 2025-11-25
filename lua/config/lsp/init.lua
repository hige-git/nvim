local status, _ = pcall(require, "lspconfig")
if not status then
   return
end

require("config.lsp.mason")
require("config.lsp.handlers").setup()
-- require("config.lang.null-ls") -- To be done
