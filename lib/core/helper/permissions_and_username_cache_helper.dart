import 'package:shared_preferences/shared_preferences.dart';

class PermissionsAndUsernameCacheHelper {
  static Future<void> permissionsAndUsernameCacheHelper(
      String permissions, String username) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("PERMISSIONS", permissions);
    sharedPreferences.setString("USERNAME", username);
  }

  static Future<String?> getCachedPermissions() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final cachedPermissions = sharedPreferences.getString("PERMISSIONS");
    return cachedPermissions;
  }

  static Future<String?> getCachedUsername() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final cachedUsername = sharedPreferences.getString("USERNAME");
    return cachedUsername;
  }
}
