local conform = require("conform")
conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- Conform will run multiple formatters sequentially
		python = { "isort", "black" },
		cpp = { "clang-format" },
		-- Use a sub-list to run only the first available formatter
		-- javascript = { { "prettierd", "prettier" } },
		rust = { "rustfmt" },
        dart = { "dart format" },
	},
})

vim.keymap.set({"n", "v"}, "<leader>fr", function()
	local success = conform.format()
	local fidget = require("fidget")
	if success then
		fidget.notify("File formatted 󰸞")
	else
		fidget.notify("File format failed", vim.log.levels.ERROR, { annote = "File format failed" })
	end
end, { desc = "format file" })
