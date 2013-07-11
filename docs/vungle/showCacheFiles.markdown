# CoronaProvider.ads.vungle.showCacheFiles()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [function][api.type.function]
> __Library__           [CoronaProvider.ads.vungle.*][plugin.vungle]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          cache, cached, debug, display, files, showCachedFiles, showCacheFiles, show, vungle
> __Sample code__       <https://github.com/coronalabs/plugins-sample-ads-vungle>, /CoronaSDK/SampleCode/Ads/vungle
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Writes the list of files in the Vungle cache to the log.

## Syntax

	vungle.showCacheFiles()

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

-- outputs the list of files in the Vungle cache to the log
ads.showCacheFiles()
``````