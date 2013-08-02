# CoronaProvider.ads.vungle.*

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [provider][api.type.CoronaProvider]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, video, vungle
> __Sample code__       [https://github.com/Vungle/coronaplugin-release/tree/master/samples](https://github.com/Vungle/coronaplugin-release/tree/master/samples)
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

You access the Vungle plugin by passing its provider name to the [ads library][/guide/monetization/adSupport/index.html#ad-functions]:

	local ads = require "ads"
	ads.init( "vungle", appID [, adListener] )

## Functions

The Vungle plugin implements the following [ads library][api.library.ads] core API:

#### [ads.hide()][api.library.ads.hide]

No-op.  Vungle video ads hide themselves when the user clicks the close button.

#### [ads.init()][api.library.ads.init]

Initializes the Vungle ad provider with your Vungle application ID and an optional (function or table) 
[event listener](http://developer.coronalabs.com/content/events-and-listeners).

#### [ads.show()][plugin.vungle.show]

Shows (plays) a Vungle video ad if one is available.

In addition, the Vungle plugin also provides the following additional functions:

#### [CoronaProvider.ads.vungle.isAdAvailable()][plugin.vungle.isAdAvailable]

Vungle downloads and pre-caches the next video ad to show in the background for optimal user experience.  

Returns a boolean indicating whether an ad has been cached and is available for playback.

#### [CoronaProvider.ads.vungle.getVersionString()][plugin.vungle.getVersionString]

Returns a string describing the Vungle plugin version.

#### [CoronaProvider.ads.vungle.showCacheFiles()][plugin.vungle.showCacheFiles]

(iOS only) Outputs the list of files in the Vungle cache to the log.

## Project Settings

### SDK

When you build using the Corona Simulator, the server automatically takes care of integrating the ads plugin into your project.

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
			publisherId = "com.vungle",
		},
	},		
}
``````

## Sample Code

[https://github.com/Vungle/coronaplugin-release/tree/master/samples](https://github.com/Vungle/coronaplugin-release/tree/master/samples)

## Support

More support is available from the Vungle team:

* [tech-support@vungle.com](mailto://tech-support@vungle.com)
* [Forum](http://forums.coronalabs.com/forum/612-vungle/)
* [https://v.vungle.com](https://v.vungle.com)
