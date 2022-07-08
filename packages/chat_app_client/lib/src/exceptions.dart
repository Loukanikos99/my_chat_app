/// Returns a String in case that occurs a problem
/// with the credentials.
class WrongAuthCredentials implements Exception {
  @override
  String toString() => 'Credenciales incorrectas';
}

/// Returns a String in case that occurs that
/// the user wasn't find in the DB.
class UserNotFound implements Exception {
  @override
  String toString() => 'Usuario no encontrado';
}
