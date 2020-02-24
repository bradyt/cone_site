# Source code

Source code is available at <https://github.com/bradyt/cone>.

## Run app from source

1. [Install flutter](https://flutter.dev/docs/get-started/install). This should include the following:
    - Modifying `PATH`
    - Checking `flutter doctor`
    - Android setup (including, Android device and/or Android emulator)
2. To verify your flutter setup, you can skip to the [test
   drive](https://flutter.dev/docs/get-started/test-drive?tab=terminal).
   Note that I don't find it important to setup some editor, but
   rather, to make sure flutter works from your terminal. Note that
   this step includes the following:
     - Check `flutter devices`
3. `git clone https://github.com/bradyt/cone`
4. `cd cone/cone_flutter`
5. `flutter run --flavor=dev --device <see flutter devices>`
   (Regarding flavor, see
   <https://github.com/flutter/flutter/issues/22856>)

You can substitute for some of the steps above if you'd like to try
`--device macos` or `--device chrome`, etc, but those are not
officially supported yet; for example, macos and web are not on
Flutter's stable branch yet. I have been using `--device macos`
locally to make some development easier. There is no file provider on
web, we need a solution.

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
