# vungle.*

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [CoronaProvider][api.type.CoronaProvider]
> __Library__           [ads.*][api.library.ads]
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, vungle
> __Availability__		Starter, Basic, Pro, Enterprise
> __Platforms__			Android, iOS
> --------------------- ------------------------------------------------------------------------------------------


## Overview

The Vungle plugin offers easy integration of Vungle video ads using the [ads][api.library.ads] library and [ads.init()][plugin.vungle.init].


## Registration

Using Vungle video ads requires a free account &mdash; please [register](https://v.vungle.com/dashboard/signup) before proceeding.


## Functions

#### [ads.init()][plugin.vungle.init]

#### [ads.show()][plugin.vungle.show]

<s>

#### [ads.hide()][plugin.vungle.hide]

</s>

#### [isAdAvailable()][plugin.vungle.isAdAvailable]

#### [getVersionString()][plugin.vungle.getVersionString]

#### [showCacheFiles()][plugin.vungle.showCacheFiles]


## Project Settings

To use this plugin, add the following entries into the `plugins` table of `build.settings`. When added, the build server will integrate the plugin during the build phase.

``````lua
settings =
{
	plugins =
	{
		["CoronaProvider.ads.vungle"] =
		{
			publisherId = "com.vungle",
		},
		["plugin.google.play.services"] =
		{
			publisherId = "com.coronalabs"
		},
	},		
}
``````

### Android

For Android, the following permissions/features are automatically added when using this plugin:

``````lua
	android =
	{
		usesPermissions =
		{
			"android.permission.INTERNET",
			"android.permission.WRITE_EXTERNAL_STORAGE",
			"android.permission.ACCESS_NETWORK_STATE",
		},
	},
``````


## Sample

[https://github.com/Vungle/coronaplugin-release/tree/master/samples/](https://github.com/Vungle/coronaplugin-release/tree/master/samples)


## Support

* [tech-support@vungle.com](mailto://tech-support@vungle.com)
* [https://v.vungle.com/](https://v.vungle.com)
* [Corona Forums](http://forums.coronalabs.com/forum/612-vungle/)
