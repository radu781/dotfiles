local chunk = require("hlchunk.mods.chunk")
chunk({
	priority = 15,
	style = {
		{ fg = "#806d9c" },
		{ fg = "#c21f30" },
	},
	use_treesitter = true,
	chars = {
		horizontal_line = "─",
		vertical_line = "│",
		left_top = "╭",
		left_bottom = "╰",
		right_arrow = ">",
	},
	textobject = "",
	max_file_size = 1024 * 1024,
	error_sign = true,
	-- animation related
	duration = 0,
	delay = 0,
}):enable()

local indent = require("hlchunk.mods.indent")
indent({
	priority = 10,
	style = { vim.api.nvim_get_hl(0, { name = "Whitespace" }) },
	use_treesitter = false,
	chars = { "│" },
	ahead_lines = 5,
	delay = 100,
}):enable()

local line = require("hlchunk.mods.line_num")
line({
	style = "#806d9c",
	priority = 10,
	use_treesitter = false,
}):enable()

local blank = require("hlchunk.mods.blank")
blank({
    enable = false
}):disable()
