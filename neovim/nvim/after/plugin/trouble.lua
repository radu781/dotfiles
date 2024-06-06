local trouble = require("trouble")
trouble.setup({
	modes = {
		diagnostics = {
			desc = "diagnostics",
			events = { "DiagnosticChanged", "BufEnter" },
			-- Trouble classic for other buffers,
			-- but only if they are in the current directory
			source = "diagnostics",
			groups = {
				-- { format = "{hl:Special}󰚢 {hl} {hl:Title}Diagnostics{hl} {count}" },
				-- { "severity", format = "{severity_icon} {severity} {count}" },
				-- { "dirname", format = "{hl:Special} {hl} {dirname} {count}" },
				{ "directory" },
				{ "filename", format = "{file_icon} {basename} {count}" },
			},
			sort = { "severity", "filename", "pos", "message" },
			format = "{severity_icon} {message:md} {item.source} ({code}) {pos}",
			-- filter = {
			-- ["not"] = {
			--   any = {
			--     { severity = vim.diagnostic.severity.ERROR },
			--     { buf = 0 },
			--   },
			-- },
			-- function(item)
			--   return item.filename:find((vim.loop or vim.uv).cwd(), 1, true)
			-- end,
			-- },
		},
		-- {
		--   -- error from all files
		--   source = "diagnostics",
		--   groups = { "severity", "code", "filename" },
		--   filter = {
		--     -- severity = 1,
		--   },
		--   sort = { "filename", "pos" },
		--   format = "sig {severity_sign} {severity} file: {filename} pos: {pos}",
		-- },
		-- {
		--   -- diagnostics from current buffer
		--   source = "diagnostics",
		--   groups = { "severity", "filename" },
		--   filter = {
		--     buf = 0,
		--   },
		--   sort = { "pos" },
		-- },
	},
})

vim.keymap.set("n", "<leader>ed", "<cmd>Trouble diagnostics toggle<CR>", { desc = "document diagnostics on opened buffers" })
vim.keymap.set("n", "gr", "<cmd>Trouble lsp_references toggle<CR>", { desc = "go to references" })
