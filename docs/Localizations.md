Quick script to add a few languages via simple google translate.

``` dart
import 'package:translator/translator.dart';

main(List<String> arguments) async {
  final translator = GoogleTranslator();

  final locales = [
    'de',
    'hi',
    'in',
    'it',
    'ja',
    'fr',
    'th',
    'tl',
    'zh',
  ];

  var values = <String, String>{
    'addTransaction': 'Add transaction',
    'currencyOnLeft': 'Currency on left',
    'defaultCurrency': 'Default Currency',
    'enterDefaultCurrency': 'Enter default currency',
    'ledgerFile': 'Ledger file',
    'settings': 'Settings',
    'submit': 'Submit',
  };

  Future<String> getForLanguage(String targetLocale) async {
    String result = '\'$targetLocale\': <String, String>{\n';
    for (MapEntry entry in values.entries) {
      result += '  \'${entry.key}\': \'';
      result +=
          await translator.translate(entry.value, from: 'en', to: targetLocale);
      result += '\',\n';
    }
    result += '},';
    return result;
  }

  for (String locale in locales) {
    print(await getForLanguage(locale));
  }
}
```
