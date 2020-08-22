import 'package:flutter/widgets.dart';

class FormNotifierProvider {
  ValueNotifier<bool> _form = ValueNotifier(false);
  ValueNotifier<bool> get form => _form;

  void change() => _form.value = !_form.value;
}
