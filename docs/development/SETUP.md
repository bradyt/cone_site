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

### Android specific

If you get `command not found: adb`, try something like `export PATH="$PATH:/Users/alice/Library/Android/sdk/platform-tools"`

## Contributing

_This section probably should be moved to PR templates._

I believe any pull requests will be checked on Travis. This includes
testing with the formatter, the analyzer, running tests, and checking
code coverage. See `ci-script.sh` at base of project.

Please also check conventions for formatting commits, spelling, and
rebase your commits until they are clear. If a commit was added to fix
another commit in your PR, please combine them.

# Screenshots

In one terminal, use `flutter run`, and note the observatory uri.

In a second terminal, use

```sh
flutter screenshot --type=rasterizer --observatory-uri=<uri-from-above>
```

# F-Droid

## Make sure cone builds on fdroid

As described at <https://gitlab.com/fdroid/fdroiddata/blob/master/CONTRIBUTING.md#building-it>, verify the following command runs successfully.

```sh
fdroid build -v -l info.tangential.cone
```

If it breaks, we either need to change the cone project, or the metadata at fdroiddata.

## Modifying the metadata at fdroiddata

- run fdroid executable from git
- fetch upstream fdroiddata, merge master
- update fdroiddata/metadata/info.tangential.cone.yml
- run all the checks outlined at <https://gitlab.com/fdroid/fdroiddata/blob/master/CONTRIBUTING.md#building-it>

```sh
fdroid readmeta
fdroid rewritemeta info.tangential.cone
fdroid checkupdates info.tangential.cone
fdroid lint info.tangential.cone
fdroid build -v -l info.tangential.cone
```

# Google Play

```sh
flutter clean
flutter build appbundle
```

# fastlane

```sh
cd cone_flutter/android
echo 'source "https://rubygems.org"\n\ngem "fastlane"' > Gemfile
gem install --user-install bundler
bundle config set path 'vendor/bundle'
bundle install
echo '\n/vendor/bundle/' >> .gitignore
```
