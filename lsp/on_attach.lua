return function(client, bufnr)
  if client.server_capabilities.inlayHintProvider then
    local inlayhints_avail, inlayhints = pcall(require, "lsp-inlayhints")
    if inlayhints_avail then
      inlayhints.on_attach(client, bufnr)
      vim.keymap.set("n", "<leader>uH", function() inlayhints.toggle() end, { desc = "Toggle inlay hints" })
    end
  end

  if client.supports_method "textDocument/signatureHelp" then
    vim.keymap.set("n", "gK", function() vim.lsp.buf.signature_help() end, { desc = "Signature help" })
    vim.keymap.set("i", "<c-k>", function() vim.lsp.buf.signature_help() end, { desc = "Signature help" })
  end
end
