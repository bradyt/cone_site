
## TODO soon

- fix layout of project, with respect to a README, etc
- lift journal contents to a provider at top of widget tree, before
  continuing on lifting more business logic out of presentation

## TODO later

- a note on some links about locales and amounts
    - <https://community.appway.com/screen/kb/article/formatting-integers-according-to-locale-1482810848119>
    - <https://www.w3.org/International/wiki/Locale-based_forms>
    - <https://docs.microsoft.com/en-us/globalization/locale/number-formatting>
    - <https://docs.oracle.com/cd/E19455-01/806-0169/6j9hsml2h/index.html>
    - <https://developer.android.com/training/basics/supporting-devices/languages>

- [ ] research Focus widgets, API, in hopes of some simplifications
- [ ] try SelectableText
- [ ] try LicensePage widget
- [ ] try on raw key input to make TAB key work
- [ ] planning on removing the complicated logic that tries to guess
      at user's locale for initial value of default currency. it was
      tangled with the logic to get the locale for language.
      - maybe we can revisit this later with a property call that
        doesn't require being in the MaterialApp context.

- [ ] now that we are allowing another mimetype, add heuristics
  - make mimetype viewable by user
  - make contents of file viewable by user, even after the planned changes to homescreen
  - add tests for different line endings, different file encodings, maybe even right to left text
  - experiment with heuristics for reasonable data. parsing the file
    and finding transactions, etc, is one clue. but if the parsing is
    only looking for positive results, as we do now, it's not telling
    us if the ledger file is invalid.
      - we could consider some existing dart tools
          - <https://pub.dev/packages/validators>
          - <https://pub.dev/packages?q=convert>

- [ ] look for idioms for clis written for dart apps
    - <https://github.com/dart-lang/sdk/blob/master/runtime/bin/main_options.cc>
    - <https://github.com/dart-lang/stagehand/blob/master/pubspec.yaml#L22>
    - <https://github.com/dart-lang/dartdoc/blob/master/bin/dartdoc.dart#L46>
    - <https://github.com/flutter/flutter/blob/master/packages/flutter_tools/bin/flutter_tools.dart#L7>
    - <https://github.com/dart-lang/sdk/issues/26578>
      a little discussion on distributing clis
    - <https://github.com/dart-lang/sdk/wiki/Snapshots>
    - <https://dart.dev/tools/dart-vm#snapshot-option>

- [ ] try flutter snapshots plugin to provide screenshots for fdroid
- [ ] improve the addition of rows UI
- [ ] cleanup the date item
- [ ] try developing on desktop
- [ ] ensure app works at various
- [ ] improve logging in java channel
- [ ] investigate all the methods leading up to the box issue, such as permissions, etc

- review fdroid build notes
    - <https://gitlab.com/fdroid/fdroidserver/issues/511>
    - <https://gitlab.com/fdroid/fdroiddata/merge_requests/3739>
    - review the gradle build file

- [ ] press back twice to leave app from home page
- [ ] determine if we can specify multiple mime types, or use a
      heuristic to check if a file contains plain text
- [ ] refactor append to only look at previous contents, not edit. use
      trim in transaction's print if needed
- [ ] add linting workflow suggestions
- [ ] improve selection of currencies, so users can search if they're
      not sure the three letter code, for example Mexican Peso is MXN.
- [ ] add parser code
- [ ] continue efforts on user configurability of ledger location
- [ ] add notes on how to add a language to localizations
- currency issues
    - [ ] make widget resize to that of contained text
    - [ ] qwerty option
    - [ ] decimal separator
    - [ ] combined amount and currency field
    - [ ] transpose amount and currency fields
        - [x] in settings
        - [ ] automatically based on symbol vs name
        - [ ] with drag and drop
        - [ ] with an option in data entry UI
- [ ] maybe try <https://pub.dev/packages/currency_icons or https://pub.dev/packages/country_icons>
- [ ] add tests
- [ ] start an ios branch
- [ ] research if there's better logging idioms than `print`
      - some idiomatic might be described at <https://medium.com/flutter-community/debugprint-and-the-power-of-hiding-and-customizing-your-logs-in-dart-86881df05929>
- [ ] research how fastlane might benefit project in early stages
- [ ] work on cli, to make working on parser easier
- [ ] allow user to make templates for faster data entry of common purchases
- [ ] add localization for Chinese, Russian, as desire is raised
- [ ] consider details at <https://directory.fsf.org/wiki/Free_Software_Directory:Requirements>
- [ ] <https://www.gnu.org/licenses/gpl-howto.en.html>
- [ ] fill column
- [ ] basic offset

## partially done

- [ ] clean up code in add transaction form

## DONE (or partially done) but not yet on master

- [x] update details of project to that of current `flutter create`
      template
- [ ] refactor repo to contain flutter project, cli project, file
      parsing project. ensure this refactoring is compatible with
      f-droid, package managers, etc.
- [ ] work on parser

## DONE but not yet on fdroid
