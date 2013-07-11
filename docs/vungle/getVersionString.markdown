# CoronaProvider.ads.vungle.getVersionString()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [function][api.type.function]
> __Library__           [CoronaProvider.ads.vungle.*][plugin.vungle]
> __Return value__      [String][api.type.String]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          display, get, getVersionString, show, string, version, vungle
> __Sample code__       <https://github.com/coronalabs/plugins-sample-ads-vungle>, /CoronaSDK/SampleCode/Ads/vungle
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Returns the plugin and underlying SDK version numbers as a [String][api.type.String].

## Syntax

	vungle.getVersionString()

## Examples

``````lua
-- name of the Vungle 'ads' provider
local provider = "vungle"

-- your Vungle application ID
local appID = "vungleTest"

-- load Corona 'ads' library
local ads = require "ads"

-- initialize the 'ads' library using Vungle as the provider and without the optional 3rd 'listener' parameter
ads.init( provider, appID, adListener )

-- outputs a string resembling "1.0.0 (VungleDroid/1.2.2)"
print(ads.getVersionString())
``````