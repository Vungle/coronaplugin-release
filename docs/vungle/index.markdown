# CoronaProvider.ads.vungle.*

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [provider][api.type.CoronaProvider]
> __Revision__          [Current Public Release (1.0.0)][plugin.vungle]
> __Keywords__          ads, advertising, video, vungle
> __Sample code__       <https://github.com/coronalabs/plugins-sample-ads-vungle>, /CoronaSDK/SampleCode/Ads/vungle
> __See also__          [Marketplace](http://www.coronalabs.com/resources/plugins/)
> __Availability__      Starter, Pro, Enterprise
> --------------------- ------------------------------------------------------------------------------------------

## Overview

The Vungle [ads library][api.library.ads] provider allows easy integration of Vungle video ads in your application.

## Sign Up

Integrating Vungle video ads requires [free registration with Vungle](https://v.vungle.com/dashboard/signup).

## Platforms

The following platforms are supported:

* Android
* iOS

## Syntax

You access the Vungle plugin by passing its provider name to the [ads library][/guide/monetization/adSupport/index.html#plugins]:

	local ads = require "ads"
	ads.init( "vungle", appID, adListener )

## Functions

The Vungle plugin implements the following [ads library][api.library.ads] core API:

#### [ads.hide()][api.library.ads.hide]

No-op.  Vungle video ads hide themselves when the user clicks the close button.

#### [ads.init()][api.library.ads.init]

Initializes the Vungle ad provider with your Vungle application ID and an optional (function or table) 
[event listener](http://developer.coronalabs.com/content/events-and-listeners).

#### [ads.show()][api.library.ads.show]

Shows (plays) a Vungle video ad if one is available.


In addition, the Vungle plugin also provides the following additional functions:

#### [vungle.isAdAvailable()][plugin.vungle.isAdAvailable]

Vungle downloads and pre-caches the next video ad in the background for optimal user experience.  
Returns a boolean indicating whether an ad has been cached and is available for playback.

#### [vungle.getVersionString()][plugin.vungle.getVersionString]

Returns a string describing the Vungle plugin version.

#### [vungle.showCacheFiles()][plugin.vungle.showCacheFiles]

(iOS only) Outputs the list of files in the Vungle cache to the log.

## Project Settings

### SDK

When you build using the Corona Simulator, the server automatically takes care of integrating the plugin into your project.

All you need to do is add an entry into a `plugins` table of your `build.settings`.  
The following is an example of a minimal `build.settings` file:

``````
settings =
{
	plugins =
	{
		-- key is the name passed to Lua's 'require()'
		["CoronaProvider.ads.vungle"] =
		{
			-- required
			publisherId = "your Vungle app ID",
		},
	},		
}
``````

<!---
### Enterprise

TBD
-->

## Sample Code

<https://github.com/coronalabs/plugins-sample-ads-vungle>

## Support

More support is available from the Vungle team:

* <tech-support@vungle.com>
* <http://v.vungle.com>