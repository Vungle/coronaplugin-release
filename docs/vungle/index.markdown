# CoronaProvider.ads.vungle.*

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [provider][api.type.CoronaProvider]
> __Revision__          [1.0.0](/plugin/vungle/)
> __Keywords__          vungle, ads, advertising, video
> __Sample code__       /CoronaSDK/SampleCode/Ads/vungle
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

You access the Vungle plugin by passing its provider name to the [ads library][api.library.ads]:

	local ads = require "ads"
	ads.init( "vungle", appID, adListener )

## Functions

The Vungle plugin implements the core API specified by the [ads library][api.library.ads]:

#### [ads.hide()][api.library.ads.hide]

No-op.  Vungle video ads hide themselves when the user clicks the close button.

#### [ads.hide()][api.library.ads.init]

Initializes the Vungle ad provider with your application's ID and an optional (function or table) [event listener](http://developer.coronalabs.com/content/events-and-listeners).

#### [ads.hide()][api.library.ads.show]

Shows (plays) a Vungle video ad if one is available.


In addition, the Vungle plugin also provides the following functions:

#### [vungle.isAdAvailable()][plugin.vungle.isAdAvailable]

Vungle downloads and pre-caches the next video ad in the background for an optimal user experience.  This method returns a boolean indicating whether an ad has been cached and is available for playback.

#### [vungle.getVersionString()][plugin.vungle.getVersionString]

Returns a string describing the Vungle plugin version.

#### [vungle.showCacheFiles()][plugin.vungle.showCacheFiles]

(iOS only) Returns a list of the files in the Vungle cache.

## Project Settings

### SDK

When you build using the Corona Simulator, the server automatically takes care of integrating the plugin into your project. 

All you need to do is add an entry into a `plugins` table of your `build.settings`. The following is an example of a minimal `build.settings` file:

``````
settings =
{
	plugins =
	{
		-- key is the name passed to Lua's 'require()'
		["CoronaProvider.ads.vungle"] =
		{
			-- required
			publisherId = "[your Vungle publisher ID]",
		},
	},		
}
``````

### Enterprise

TBD

## Sample Code

You can access sample code [here](SAMPLE_CODE_URL).

## Support

More support is available from the Vungle team:

* [E-mail](mailto://tech-support@vungle.com)
* [Forum](http://forum.coronalabs.com/plugin/vungle)
* [Plugin Publisher](http://v.vungle.com)
