# vungle.isAdAvailable()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [function][api.type.function]
> __Return value__      [Boolean][api.type.Boolean]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, vungle
> __See also__          [vungle.*][plugin.vungle]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

Vungle downloads and caches the next video ad for optimal user experience. This function returns `true` or `false` depending on the availability of a cached ad.


## Syntax

	vungle.isAdAvailable()


## Example

``````lua
local ads = require( "ads" )

ads.init( "vungle", "myAppId" )

if ( ads.isAdAvailable() ) then
	ads.show( "interstitial" )
end
``````