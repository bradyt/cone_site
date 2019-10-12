# cone

A mobile ledger-like.

[<img src="https://play.google.com/intl/en_us/badges/images/generic/en_badge_web_generic.png"
     alt="Get it on Google Play"
     height="80">](https://play.google.com/store/apps/details?id=info.tangential.cone)
[<img src="https://f-droid.org/badge/get-it-on.png"
     alt="Get it on F-Droid"
     height="80">](https://f-droid.org/packages/info.tangential.cone/)

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

## Donate

- paypal: <https://www.paypal.me/bradytrainor>
- bitcoin: 3AVZKz1EFhKzU2wuqZmJzjercKBakRmpAR
- ethereum: 0x1c99F2E13B9BC204a70dbc8Add54b37Efdf24516
