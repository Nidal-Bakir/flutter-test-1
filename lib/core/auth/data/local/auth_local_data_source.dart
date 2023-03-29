import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:xxtea/xxtea.dart';

import '../../../models/user.dart';

abstract class AuthLocalDataSource {
  Future<User?> getLocalUser();

  Future<bool> setLocalUser(User user);

  Future<String?> getUserToken();

  Future<bool> setUserToken(String token);

  Future<void> clearAllUserData();
}

class AuthLocalDataSourceImpl extends AuthLocalDataSource {
  final SharedPreferences preferences;
  final _userKey = 'user';

  AuthLocalDataSourceImpl(this.preferences);

  @override
  Future<User?> getLocalUser() async {
    final result = preferences.getString(_userKey);
    if (result != null) {
      return User.fromJson(jsonDecode(result));
    }
    return null;
  }

  @override
  Future<bool> setLocalUser(User user) async {
    return preferences.setString(_userKey, jsonEncode(user.toJson()));
  }

  @override
  Future<bool> setUserToken(String token) {
    return preferences.setString(
      'TTT',
      xxtea.encryptToString(token, '789!_QIT_48@G%')!,
    );
  }

  @override
  Future<String?> getUserToken() async {
    final result = preferences.getString('TTT');
    if (result != null) {
      return xxtea.decryptToString(result, '789!_QIT_48@G%');
    }
    return null;
  }

  @override
  Future<void> clearAllUserData() async {
    await Future.wait([
      preferences.remove(_userKey),
      preferences.remove('TTT'),
    ]);
  }
}
