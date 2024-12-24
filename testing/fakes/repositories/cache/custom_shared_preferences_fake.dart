import 'package:f_notes/data/repositories/cache/custom_shared_preferences.dart';

class CustomSharedPreferencesFakes implements CustomSharedPreferences {
  final Map<String, dynamic> _sharedPreferences = {};

  @override
  Future getValue(String key) {
    return Future.value(_sharedPreferences[key]);
  }

  @override
  Future setValue(String key, dynamic value) {
    _sharedPreferences[key] = value;
    return Future.value();
  }
}