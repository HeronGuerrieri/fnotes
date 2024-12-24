abstract interface class CustomSharedPreferences {
  Future<void> setValue(String key, dynamic value);
  Future<dynamic> getValue(String key);
}