part of ascii_tables;

class WrongArgumentType implements Exception {
  final String msg;
  const WrongArgumentType([this.msg]);
  String toString() => msg == null ? 'Wrong Argument Type' : msg;
}