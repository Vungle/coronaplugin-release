# vungle.init()

> --------------------- ------------------------------------------------------------------------------------------
> __Type__              [Function][api.type.Function]
> __Return value__      none
> __Revision__          [REVISION_LABEL](REVISION_URL)
> __Keywords__          ads, advertising, vungle
> __See also__          [ads.show()][plugin.vungle.show]
>								[vungle.*][plugin.vungle]
> --------------------- ------------------------------------------------------------------------------------------


## Overview

`ads.init()` initializes the Corona `ads` library by specifying the name of the ad network service provider and the application identifier.

Once the `ads` library is initialized, you can request an ad using [ads.show()][plugin.vungle.show].


## Syntax

	ads.init( providerName, appId [, adListener] )

##### providerName ~^(required)^~
_[String][api.type.String]._ String value for the provider name. For Vungle, use `"vungle"`.

##### appId ~^(required)^~
_[String][api.type.String]._ String containing the app ID.

##### adListener ~^(optional)^~
_[Listener][api.type.Listener]._ Listener function that will receive an event indicating if showing an ad via [ads.show()][plugin.vungle.show] has succeeded or failed. It will be called for every new ad that is requested. In the passed event, `event.isError` will be `true` if the system failed to retrieve an ad &mdash; this can occur if the ad network is unreachable or is out of inventory/ads, in which case nothing is shown on screen. `event.isError` will be `false` if an ad was successfully retrieved and displayed on screen.