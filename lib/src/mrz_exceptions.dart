abstract class MrzException implements Exception {
  const MrzException(this.message);

  final String message;

  @override
  String toString() =>
      '$message. If you think this is a mistake, please file an issue '
      'https://github.com/olexale/mrz_parser/issues';
}

class InvalidMrzInputException extends MrzException {
  const InvalidMrzInputException() : super('Invalid MRZ parser input');
}

class InvalidDocumentNumberException extends MrzException {
  const InvalidDocumentNumberException()
      : super('Document number hash mismatch');
}

class InvalidBirthDateException extends MrzException {
  const InvalidBirthDateException() : super('Birth date hash mismatch');
}

class InvalidExpiryDateException extends MrzException {
  const InvalidExpiryDateException() : super('Expiry date hash mismatch');
}

class InvalidOptionalDataException extends MrzException {
  const InvalidOptionalDataException() : super('Optional data hash mismatch');
}

class InvalidMrzValueException extends MrzException {
  const InvalidMrzValueException() : super('Final hash mismatch');
}
