import 'package:get/get_navigation/src/root/internacionalization.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      "choose_language": 'Choose your language',
      "language_restart_note": 'Changing the language will initiate a restart'
    },
    'ak_GH': {
      "choose_language": "Paw kasa a wobɛfa",
      "language_restart_note": "Sɛ wobɛsesa kasa a, app no bɛhyɛ ase bio"
    }

  };
}
