source = "onedarkpro.nvim/lua"
package.path = source.."/?.lua;" .. source.."/?/init.lua;" .. package.path
package.cpath = source.."/?.so;" .. package.cpath

local function generate(name)
	local OneDarkPro = require "onedarkpro.theme"

	theme = OneDarkPro.load(name)

	file = io.open(name .. '.json', 'w')
	io.output(file)

	io.write(name)

	io.close(file)
end

return generate
