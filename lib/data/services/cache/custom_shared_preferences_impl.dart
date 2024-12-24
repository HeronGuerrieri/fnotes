import 'package:f_notes/data/repositories/cache/custom_shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomSharedPreferencesImpl implements CustomSharedPreferences {

  @override
  Future getValue(String key) async {
    final sharedPreferences = await SharedPreferences.getInstance();

    return Future.value(sharedPreferences.get(key));
  }

  @override
  Future setValue(String key, dynamic value) async {
    final sharedPreferences = await SharedPreferences.getInstance();

    if (value is String) {
      return sharedPreferences.setString(key, value);
    } else if (value is int) {
      return sharedPreferences.setInt(key, value);
    } else if (value is double) {
      return sharedPreferences.setDouble(key, value);
    } else if (value is bool) {
      return sharedPreferences.setBool(key, value);
    } else if (value is List<String>) {
      return sharedPreferences.setStringList(key, value);
    } else {
      throw Exception('Value type not supported');
    }
  }
}