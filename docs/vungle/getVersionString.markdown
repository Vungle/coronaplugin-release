# CoronaProvider.ads.vungle.getVersionString()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [function][api.type.function]
> __Library__           [CoronaProvider.ads.vungle.*][plugin.vungle]
> __Return value__      [String][api.type.String]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          display, get, getVersionString, show, string, version, vungle
> __Sample code__       [https://github.com/Vungle/coronaplugin-release/tree/master/samples](https://github.com/Vungle/coronaplugin-release/tree/master/samples)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Returns the plugin and underlying SDK version numbers as a [String][api.type.String].

## Syntax

	vungle.getVersionString()

## Example

``````lua
-- name of the Vungle 'ads' provider
local provider = "vungle"

-- replace with your own Vungle application ID
local appId = "vungleTest"

-- load Corona 'ads' library
local ads = require "ads"

-- initialize the 'ads' library using Vungle as the provider and without the optional 3rd parameter 'listener'
ads.init( provider, appId )

-- outputs a string of the form "1.0.0 (VungleDroid/1.2.2)"
print(ads.getVersionString())
``````