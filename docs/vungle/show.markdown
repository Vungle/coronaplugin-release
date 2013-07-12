# CoronaProvider.ads.vungle.show()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [function][api.type.function]
> __Library__           [CoronaProvider.ads.vungle.*][plugin.vungle]
> __Return value__      [Boolean][api.type.Boolean]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ad, ads, show, showAd, vungle
> __Sample code__       <https://github.com/coronalabs/plugins-sample-ads-vungle>, /CoronaSDK/SampleCode/Ads/vungle
> __See also__          [ads.show()][api.library.ads.show]
> --------------------- ------------------------------------------------------------------------------------------

## Overview

Displays a full-screen video ad if one is cached and available for display.

## Syntax

	ads.show( adUnitType [, params] )

##### adUnitType ~^(required)^~
_[String][api.type.String]._ Vungle supports the following ad types:

* `interstitial` - default video ad unit
* `incentivized` - video ad unit with optional server-to-server callback for in-app rewards

##### params ~^(optional)^~
_[Table][api.type.Table]._ Optional parameters for configuring video ad.  See **`params` Table Properties** below.

### `params` Table Properties

##### isAnimated ~^(optional,&#32;iOS&#32;only)^~
_[Boolean][api.type.Boolean]._  **`true`** (default) if the video ad should transition in with a slide effect.  `false` if it should appear instantaneously.

##### isAutoRotation ~^(optional)^~
_[Boolean][api.type.Boolean]._  **`true`** (default) if the video ad should auto-rotate with the device's orientation.  `false` if it should use the ad's preferred orientation.

##### isBackButtonEnabled ~^(optional,&#32;Android&#32;only)^~
_[Boolean][api.type.Boolean]._  `true` if the Android back button should stop playback during the video ad and display the post-roll.  **`false`** (default) if the back button should be disabled during video ad playback.

Note:  The back button is always enabled in the post-roll.  When pressed, it exits the ad completely and returns the user to your application.

##### isSoundEnabled ~^(optional)^~
_[Boolean][api.type.Boolean]._  **`true`** (default) if sound should be enabled during video ad playback (subject to the device's sound settings as well).  `false` if video playback should start muted.  The user can always choose to mute or unmute sound during playback.

##### username ~^(optional,&#32;'`incentivized`'&#32;ad&#32;type&#32;only)^~
_[String][api.type.String]._  The user identifier you wish to receive in a server-to-server callback to reward the user in your application for a completed video ad view.

##### isCloseShown ~^(optional,&#32;'`incentivized`'&#32;ad&#32;type&#32;only)^~
_[Boolean][api.type.Boolean]._  **`true`** (default) if a close button allowing the user to skip a video ad should be shown after 4 seconds.  `false` if no close button should be shown, forcing the user to watch the entire video ad.

Note:  The close button can be hidden for both ad types on the [Vungle Dashboard][https://v.vungle.com/].

## Example

``````lua
-- name of the Vungle 'ads' provider
local provider = "vungle"

-- replace with your own Vungle application ID
local appId = "vungleTest"

-- load Corona 'ads' library
local ads = require "ads"

-- listener that handles a video ad not being available for display
local function adListener( event )
    if event.type == "adStart" and event.isError then
        -- cached video ad not available for display
    end
end

-- initialize the 'ads' library using Vungle as the provider with 'adListener' as an optional 3rd parameter
ads.init( provider, appId, adListener )

-- display an ad if a cached video is available for playback
local wasAdShown = ads.show( "interstitial", { isAnimated = false, isBackButtonEnabled = true })
``````