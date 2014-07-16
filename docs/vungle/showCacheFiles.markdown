# vungle.showCacheFiles()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [function][api.type.function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, vungle
> __See also__          [vungle.*][plugin.vungle]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Writes the list of files in the Vungle cache to the log. This feature is only available for iOS.


## Syntax

	vungle.showCacheFiles()


## Example

``````lua
local ads = require( "ads" )

ads.init( "vungle", "myAppId" )

-- Writes the list of files in the Vungle cache to the log
ads.showCacheFiles()
``````