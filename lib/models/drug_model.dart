class Drug {
  final String name;
  final String classification;
  final String indication;
  final String frequency;
  final String drugActions;
  final String sideEffects;
  final List<String> brandNames;
  final String interactions;
  final String caution;
  final String additionalInformation;
  final String contraindications;
  final String prescriptionType;
  final String articlePath;

  Drug({
    required this.indication,
    required this.brandNames,
    required this.interactions,
    required this.caution,
    required this.additionalInformation,
    required this.contraindications,
    required this.prescriptionType,
    required this.classification,
    required this.name,
    required this.frequency,
    required this.drugActions,
    required this.sideEffects,
    required this.articlePath,
  });
}
