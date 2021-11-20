# flutter_make_phone_calls

A new ```Flutter Make Phone Calls``` application.

## Getting Started

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Do Some Configuration

- Add these lines to ```AndroidManifest.xml``` under ```manifest```.
```
<queries>
    <!-- If your app makes calls -->
    <intent>
        <action android:name="android.intent.action.DIAL" />
        <data android:scheme="tel" />
    </intent>
</queries>
```

- Add these lines to ```Info.plist``` under ```dict```.
```
<key>LSApplicationQueriesSchemes</key>
<array>
  <string>tel</string>
</array>
```

# Working

<img src="https://user-images.githubusercontent.com/73339220/142715381-c7ea3687-a55c-40a6-8714-d6efaa08b7ad.gif" width=300 />