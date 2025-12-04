enum Sex { none, male, female }

class MrzResult {
  const MrzResult();
}

class PassportMrzResult extends MrzResult {
  const PassportMrzResult({
    required this.documentType,
    required this.countryCode,
    required this.surnames,
    required this.givenNames,
    required this.documentNumber,
    required this.nationalityCountryCode,
    required this.birthDate,
    required this.sex,
    required this.expiryDate,
    required this.personalNumber,
    this.personalNumber2,
  });

  final String documentType;
  final String countryCode;
  final String surnames;
  final String givenNames;
  final String documentNumber;
  final String nationalityCountryCode;
  final DateTime birthDate;
  final Sex sex;
  final DateTime expiryDate;
  final String personalNumber;
  final String? personalNumber2;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PassportMrzResult &&
          runtimeType == other.runtimeType &&
          documentType == other.documentType &&
          countryCode == other.countryCode &&
          surnames == other.surnames &&
          givenNames == other.givenNames &&
          documentNumber == other.documentNumber &&
          nationalityCountryCode == other.nationalityCountryCode &&
          birthDate == other.birthDate &&
          sex == other.sex &&
          expiryDate == other.expiryDate &&
          personalNumber == other.personalNumber &&
          personalNumber2 == other.personalNumber2;

  @override
  int get hashCode =>
      documentType.hashCode ^
      countryCode.hashCode ^
      surnames.hashCode ^
      givenNames.hashCode ^
      documentNumber.hashCode ^
      nationalityCountryCode.hashCode ^
      birthDate.hashCode ^
      sex.hashCode ^
      expiryDate.hashCode ^
      personalNumber.hashCode ^
      personalNumber2.hashCode;
}

class DrivingLicenceMrzResult extends MrzResult {
  const DrivingLicenceMrzResult({
    required this.documentType,
    required this.configuration,
    required this.countryCode,
    required this.version,
    required this.documentNumber,
    required this.randomData,
  });

  final String documentType;
  final String configuration;
  final String countryCode;
  final String version;
  final String documentNumber;
  final String randomData;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DrivingLicenceMrzResult &&
          runtimeType == other.runtimeType &&
          documentType == other.documentType &&
          configuration == other.configuration &&
          countryCode == other.countryCode &&
          version == other.version &&
          documentNumber == other.documentNumber &&
          randomData == other.randomData;

  @override
  int get hashCode =>
      documentType.hashCode ^
      configuration.hashCode ^
      countryCode.hashCode ^
      version.hashCode ^
      documentNumber.hashCode ^
      randomData.hashCode;
}
