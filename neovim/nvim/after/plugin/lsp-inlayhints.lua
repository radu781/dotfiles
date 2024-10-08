-------------------
-- Before nvim 0.10
-------------------

-- vim.api.nvim_create_augroup("LspAttach_inlayhints", {})
-- vim.api.nvim_create_autocmd("LspAttach", {
--     group = "LspAttach_inlayhints",
--     callback = function(args)
--         if not (args.data and args.data.client_id) then
--             return
--         end

--         local bufnr = args.buf
--         local client = vim.lsp.get_client_by_id(args.data.client_id)
--         require("lsp-inlayhints").on_attach(client, bufnr)
--     end,
-- })

-- require("lsp-inlayhints").setup({
--     inlay_hints = {
--         parameter_hints = {
--             show = true,
--             prefix = "<- ",
--             separator = ", ",
--             remove_colon_start = false,
--             remove_colon_end = true,
--         },
--         type_hints = {
--             -- type and other hints
--             show = true,
--             prefix = "",
--             separator = ", ",
--             remove_colon_start = false,
--             remove_colon_end = false,
--         },
--         only_current_line = false,
--         -- separator between types and parameter hints. Note that type hints are
--         -- shown before parameter
--         labels_separator = "  ",
--         -- whether to align to the length of the longest line in the file
--         max_len_align = false,
--         -- padding from the left if max_len_align is true
--         max_len_align_padding = 1,
--         -- highlight group
--         highlight = "LspInlayHint",
--         -- virt_text priority
--         priority = 0,
--     },
--     enabled_at_startup = true,
--     debug_mode = false,
-- })
--
--
--
--

-------------------
-- After nvim 0.10
-------------------

-- Enable to automatically display inlay hints on open file
-- vim.api.nvim_create_autocmd("LspAttach", {
-- 	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
-- 	callback = function(args)
-- 		local client = vim.lsp.get_client_by_id(args.data.client_id)
-- 		if client and client.server_capabilities.inlayHintProvider then
-- 			vim.lsp.inlay_hint.enable(args.buf, true)
-- 		end
-- 		-- whatever other lsp config you want
-- 	end,
-- })

local on = false;
vim.keymap.set("n", "<leader>ih", function()
	vim.lsp.inlay_hint.enable(not on);
    on = not on;
end, { desc = "inlay hints toggle" })
