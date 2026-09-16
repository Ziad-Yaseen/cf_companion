import 'package:cf_companion/data/models/problem_model.dart';
import 'package:cf_companion/data/models/problem_statistic_model.dart';

class ProblemsetResult {
  final List<ProblemModel> problems;
  final List<ProblemStatisticModel> problemStatistics;

  const ProblemsetResult({
    required this.problems,
    required this.problemStatistics,
  });

  factory ProblemsetResult.fromJson(Map<String, dynamic> json) =>
      ProblemsetResult(
        problems:
            (json['problems'] as List<dynamic>?)
                ?.map((x) => ProblemModel.fromJson(x as Map<String, dynamic>))
                .toList() ??
            const [],
        problemStatistics:
            (json['problemStatistics'] as List<dynamic>?)
                ?.map(
                  (x) =>
                      ProblemStatisticModel.fromJson(x as Map<String, dynamic>),
                )
                .toList() ??
            const [],
      );
}
