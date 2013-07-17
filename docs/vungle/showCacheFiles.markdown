# CoronaProvider.ads.vungle.showCacheFiles()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [function][api.type.function]
> __Library__           [CoronaProvider.ads.vungle.*][plugin.vungle]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          cache, cached, debug, display, files, showCachedFiles, showCacheFiles, show, vungle
> __Sample code__       [https://github.com/Vungle/coronaplugin-release/tree/master/samples](https://github.com/Vungle/coronaplugin-release/tree/master/samples)
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Writes the list of files in the Vungle cache to the log.

## Syntax

	vungle.showCacheFiles()

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

-- outputs the list of files in the Vungle cache to the log
ads.showCacheFiles()
``````