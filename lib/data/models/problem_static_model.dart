class ProblemStatisticModel {
  final int contestId;
  final String index;
  final int solvedCount;

  ProblemStatisticModel({
    required this.contestId,
    required this.index,
    required this.solvedCount,
  });

  factory ProblemStatisticModel.fromJson(Map json) => ProblemStatisticModel(
    contestId: json["contestId"] ?? 0,
    index: json["index"] ?? '',
    solvedCount: json["solvedCount"] ?? 0,
  );
}
