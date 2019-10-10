
# A few notes on setting up an environment for cone development

- go do the flutter install
    - which includes:
        - install flutter
        - install android studio (see android docs if you want to avoid)
        - install an emulator (optional)
            - which includes:
                - some confusing avd stuff
- go to cone directory and try `flutter build apk`
- if your computer has plenty of CPU and RAM, you can probably use an
  Android emulator, otherwise, try
    - enable adb on your device
    - either use a USB, or get the ip address of your phone and do
       `adb connect <ip-address>:5555`
- `flutter run`

# Linting

Use for example, `flutter analyze --watch`.

# Screenshots

In one terminal, use `flutter run`, and note the observatory uri.

In a second terminal, use

```
flutter screenshot --type=rasterizer --observatory-uri=<uri-from-above>
```

# Notes on pushing new version to fdroid

- run fdroid executable from git
- fetch upstream, merge master
- update fdroiddata/metadata/info.tangential.cone.yml
- <https://gitlab.com/fdroid/fdroiddata/blob/master/CONTRIBUTING.md#building-it>

```
fdroid checkupdates info.tangential.cone
```

# Notes on pushing new version to google play

Make sure the app signing keys are available. Do a flutter clean to
make sure the app builds cleanly. Then flutter build appbundle. I
usually create an internal release, to make sure things install
correctly. Then it's more or less a toggle to put it on google play.
And I think the total time of waiting is from time of upload to the
internal release, so no time is really lost.
