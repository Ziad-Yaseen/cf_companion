class SecureStorageException implements Exception {
  const SecureStorageException(this.message, [this.error]);

  factory SecureStorageException.write(Object error) =>
      SecureStorageException('Failed to write to secure storage', error);

  factory SecureStorageException.read(Object error) =>
      SecureStorageException('Failed to read from secure storage', error);

  factory SecureStorageException.delete(Object error) =>
      SecureStorageException('Failed to delete from secure storage', error);

  final String message;
  final Object? error;

  @override
  String toString() =>
      'SecureStorageException: $message${error != null ? ' ($error)' : ''}';
}
