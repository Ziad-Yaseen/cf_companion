import 'package:cf_companion/core/helpers/secure_storage_helper.dart';

class HandleService {
  HandleService({SecureStorageHelper? storageHelper})
    : _storageHelper = storageHelper ?? SecureStorageHelper();

  static const String _handleKey = 'cf_handle';

  final SecureStorageHelper _storageHelper;

  Future<void> saveHandle(String handle) async {
    final trimmed = handle.trim();
    if (trimmed.isEmpty) {
      throw ArgumentError('Handle cannot be empty');
    }
    await _storageHelper.write(key: _handleKey, value: trimmed);
  }

  Future<void> updateHandle(String handle) => saveHandle(handle);

  Future<String?> getHandle() => _storageHelper.read(key: _handleKey);

  Future<bool> hasHandle() async {
    final handle = await getHandle();
    return handle != null && handle.isNotEmpty;
  }

  Future<void> clearHandle() => _storageHelper.delete(key: _handleKey);
}
