local M = function()
	local tabnine = require("cmp_tabnine.config")
	tabnine:setup({
		max_lines = 100,
		max_num_results = 5,
		sort = false,
	})
end
return M
