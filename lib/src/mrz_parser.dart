import 'package:mrz_parser/mrz_parser.dart';

abstract class MrzParser<T extends MrzResult> {
  /// Parse [input] and return [MrzResult] instance.
  ///
  /// Like [parse] except that this function returns `null` where a
  /// similar call to [parse] would throw a [MrzException]
  /// in case of invalid input or unsuccessful parsing
  T? tryParse(List<String?>? input) {
    try {
      return parse(input);
    } on Exception {
      return null;
    }
  }

  T parse(List<String?>? input);
}
