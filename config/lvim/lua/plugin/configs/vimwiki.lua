local M = function()
	-- VIMWIKI
	vim.g.vimwiki_global_ext = 0
	vim.g.vimwiki_list = {
		{
			path = "~/MyFolder/mynote",
			template_path = "~/vimwiki/templates/",
			template_default = "default",
			syntax = "markdown",
			ext = ".md",
			path_html = "~/mynote_site_html/",
			custom_wiki2html = "vimwiki_markdown",
			template_ext = ".tpl",
		},
		{
			path = "~/MyFolder/myarchive",
			template_path = "~/vimwiki/templates/",
			template_default = "default",
			syntax = "markdown",
			ext = ".md",
			path_html = "~/mynote_site_html/",
			custom_wiki2html = "vimwiki_markdown",
			template_ext = ".tpl",
		},
		{
			path = "~/MyFolder/myblog",
			template_path = "~/vimwiki/templates/",
			template_default = "default",
			syntax = "markdown",
			ext = ".md",
			path_html = "~/mynote_site_html/",
			custom_wiki2html = "vimwiki_markdown",
			template_ext = ".tpl",
		},
		{ path = "~/MyFolder/mydraft/" },
		{ path = "~/MyFolder/mysecret/" },
		{ path = "~/MyFolder/mywiki/" },
	}
end
return M
