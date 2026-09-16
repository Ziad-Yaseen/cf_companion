class ProblemStatisticModel {
  final int? contestId;
  final String index;
  final int solvedCount;

  const ProblemStatisticModel({
    this.contestId,
    required this.index,
    required this.solvedCount,
  });

  factory ProblemStatisticModel.fromJson(Map<String, dynamic> json) =>
      ProblemStatisticModel(
        contestId: json['contestId'],
        index: json['index'] ?? '',
        solvedCount: json['solvedCount'] ?? 0,
      );

  String get uniqueKey => '${contestId ?? 0}$index';
}
