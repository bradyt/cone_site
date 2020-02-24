
## Project's source code

The source is available at <https://github.com/bradyt/cone>.

There is a `cone_android/` directory where the Flutter code for the
Android app is.

The `cone_lib/` directory contains Dart library code that could
potentially be used for each of mobile apps, cli app, and maybe even
web and desktop apps.

There is also a `uri_picker/` directory, which contains a Flutter
plugin for linking a file to the Android cone app. We'll attempt to
extend that plugin to an iOS app. Not certain what will happen for
web or desktop yet.

## Run the app from source

First, make sure to
[install](https://flutter.dev/docs/get-started/install)
[Flutter](https://flutter.dev/).

After that, you can [run the
app](https://flutter.dev/docs/get-started/test-drive?tab=terminal#run-the-app-2)
from the `cone_android/` directory.

Replace `flutter run` with `flutter run --flavor=dev`. See
<https://github.com/flutter/flutter/issues/22856>.

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

# Notes on fdroid

## Make sure cone builds on fdroid

As described at <https://gitlab.com/fdroid/fdroiddata/blob/master/CONTRIBUTING.md#building-it>, verify the following command runs successfully.

```
fdroid build -v -l info.tangential.cone
```

If it breaks, we either need to change the cone project, or the metadata at fdroiddata.

## Modifying the metadata and fdroiddata

- run fdroid executable from git
- fetch upstream fdroiddata, merge master
- update fdroiddata/metadata/info.tangential.cone.yml
- run all the checks outlined at <https://gitlab.com/fdroid/fdroiddata/blob/master/CONTRIBUTING.md#building-it>

```
fdroid readmeta
fdroid rewritemeta info.tangential.cone
fdroid checkupdates info.tangential.cone
fdroid lint info.tangential.cone
fdroid build -v -l info.tangential.cone
```

## New notes on fdroid

Mostly we need to make sure the build still works on fdroid. Use the following:

```
fdroid -v -l info.tangential.cone
```

This is suggested by fdroiddata documentation, `CONTRIBUTING.md`.

# Notes on pushing new version to google play

Make sure the app signing keys are available. Do a flutter clean to
make sure the app builds cleanly. Then flutter build appbundle. I
usually create an internal release, to make sure things install
correctly. Then it's more or less a toggle to put it on google play.
And I think the total time of waiting is from time of upload to the
internal release, so no time is really lost.
