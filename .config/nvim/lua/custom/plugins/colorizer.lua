return {
	'norcalli/nvim-colorizer.lua',
	config = function()
		require('colorizer').setup({
			-- You can specify file types here, e.g.:
			-- 'css',
			-- 'javascript',
			-- 'html'
			-- Or leave empty to colorize all file types
			'*'
		})
	end
}
