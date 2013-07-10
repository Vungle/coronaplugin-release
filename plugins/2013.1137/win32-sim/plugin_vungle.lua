local Library = require "CoronaLibrary"

-- Create library
local lib = Library:new{ name='vungle', publisherId='com.vungle' }

-------------------------------------------------------------------------------
-- BEGIN (Insert your implementation starting here)
-------------------------------------------------------------------------------

-- This sample implements the following Lua:
-- 
--    local vungle = require "plugin_vungle"
--    vungle.test()
--    
lib.test = function()
	native.showAlert( 'Hello, World!', 'vungle.test() invoked', { 'OK' } )
	print( 'Hello, World!' )
end

-------------------------------------------------------------------------------
-- END
-------------------------------------------------------------------------------

-- Return an instance
return lib
