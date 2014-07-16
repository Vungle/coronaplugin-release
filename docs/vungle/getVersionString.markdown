# vungle.getVersionString()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [function][api.type.function]
> __Return value__      [String][api.type.String]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, vungle
> __See also__          [vungle.*][plugin.vungle]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Returns the plugin and underlying SDK version numbers as a string.


## Syntax

	vungle.getVersionString()


## Example

``````lua
local ads = require( "ads" )

ads.init( "vungle", "myAppId" )

-- Outputs a string in the form "1.0.0 (VungleDroid/1.2.2)"
print( ads.getVersionString() )
``````
