import 'package:get/get.dart';
import 'en.dart';
import 'tr.dart';

class TranslationService extends Translations {

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en,
        'tr_TR': tr,
      };
}
