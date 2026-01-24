-- plugin configurations
-- duckdb.yazi configuration
require("duckdb"):setup({
	row_id = "dynamic", -- Default: false
})

-- starship.yazi configuration
require("starship"):setup()

-- full-border.yazi configuration
require("full-border"):setup()
