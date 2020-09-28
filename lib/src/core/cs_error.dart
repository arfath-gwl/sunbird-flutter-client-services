abstract class CsError implements Exception {
  String _code;

  CsError(String message, String code) {
    this._code = code;
  }

  String get code {
    return this._code;
  }
}
