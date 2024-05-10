return {
	'navarasu/onedark.nvim',
	init = function() 
		local onedark = require('onedark')

		onedark.setup({
			style = 'deep'
		})
		onedark.load()	
	end
}
