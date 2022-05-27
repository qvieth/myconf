local M = function()
	require("neorg").setup({
		load = {
			["core.defaults"] = {},
			["core.norg.dirman"] = {
				config = {
					workspaces = {
						work = "~/notes/work",
						home = "~/notes/home",
					},
				},
			},
			["core.norg.concealer"] = {},
			-- ["core.norg.completion"] = {
			-- 	config = {
			-- 		engine = {},
			-- 	},
			-- },
			["core.integrations.telescope"] = {},
		},
	})
end
return M
