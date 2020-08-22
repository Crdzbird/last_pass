import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class ConditionsProvider {
  String termsConditions = "";
  ConditionsProvider();

  Future<String> loadConditions() async {
    final content = await rootBundle.loadString('assets/terms/terms.json');
    Map dataMap = json.decode(content);
    termsConditions = dataMap['terms_conditions'];
    return termsConditions;
  }
}
