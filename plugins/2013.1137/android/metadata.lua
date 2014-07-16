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
				"android.permission.ACCESS_NETWORK_STATE"
			},
			usesFeatures = {},
			applicationChildElements =
			{
				[[<activity android:name="com.vungle.publisher.FullScreenAdActivity"
					android:configChanges="keyboardHidden|orientation|screenSize"
					android:theme="@android:style/Theme.NoTitleBar.Fullscreen"/>]],
				[[<service android:name="com.vungle.publisher.VungleService" android:exported="false"/>]],
				[[<meta-data android:name="com.google.android.gms.version" android:value="@integer/google_play_services_version"/>]],
			},
		},
	},
}

return metadata
