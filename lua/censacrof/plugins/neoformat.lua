return {
	"sbdchd/neoformat",
	init = function ()
		vim.api.nvim_create_autocmd({ "BufWritePre" }, {
			command = "Neoformat",
		})
	end
}
