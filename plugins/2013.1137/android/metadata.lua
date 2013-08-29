local metadata =
{
	plugin =
	{
		format = 'jar',
		manifest = 
		{
			permissions = {},
			usesPermissions =
			{
				"android.permission.INTERNET",
				"android.permission.WRITE_EXTERNAL_STORAGE",
				"android.permission.ACCESS_WIFI_STATE",
				"android.permission.ACCESS_NETWORK_STATE"
			},
			usesFeatures = {},
			applicationChildElements =
			{
				[[<activity android:name="com.vungle.sdk.VungleAdvert"
						    android:configChanges="keyboardHidden|orientation|screenSize"
						    android:theme="@android:style/Theme.NoTitleBar.Fullscreen"/>]],
				[[<service android:name="com.vungle.sdk.VungleIntentService"/>]]
			},
		},
	},
}

return metadata
