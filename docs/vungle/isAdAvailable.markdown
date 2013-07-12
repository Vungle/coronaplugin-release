# CoronaProvider.ads.vungle.isAdAvailable()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [function][api.type.function]
> __Library__           [CoronaProvider.ads.vungle.*][plugin.vungle]
> __Return value__      [Boolean][api.type.Boolean]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ad, available, isAdAvailable, vungle
> __Sample code__       <https://github.com/coronalabs/plugins-sample-ads-vungle>, /CoronaSDK/SampleCode/Ads/vungle
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Returns a [Boolean][api.type.Boolean] indicating whether a cached video ad is available for display.

## Syntax

	vungle.isAdAvailable()

## Example

``````lua
-- name of the Vungle 'ads' provider
local provider = "vungle"

-- your Vungle application ID
local appId = "vungleTest"

-- load Corona 'ads' library
local ads = require "ads"

-- initialize the 'ads' library using Vungle as the provider and without the optional 3rd parameter 'listener'
ads.init( provider, appId )

-- if a cached video ad is available for display
if ads.isAdAvailable() then
	-- show the ad (without the optional 2nd 'params' table)
	ads.show( "interstitial" )
end
``````