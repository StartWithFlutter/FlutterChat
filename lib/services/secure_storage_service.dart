import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  /// for singleton ↓ instance should be final and uses private constructor
  static final SecureStorageService _instance =
      SecureStorageService._internal();
  FlutterSecureStorage flutterSecureStorage = const FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
  );

  /// Private constructor, not async
  SecureStorageService._internal();

  static SecureStorageService get getInstance => _instance;

  /// don't need "this" keyword & could use FSS methods directly, but leaving as is
  Future<void> set({required String key, required String value}) async {
    await flutterSecureStorage.write(key: key, value: value);
  }

  Future<String> get({required String key}) async {
    final value = await flutterSecureStorage.read(key: key) ?? '';
    return value;
  }
}
