import 'package:cf_companion/data/models/problem_model.dart';
import 'package:cf_companion/data/models/problem_static_model.dart';

class ProblemsetResult {
  final List problems;
  final List problemStatistics;

  ProblemsetResult({required this.problems, required this.problemStatistics});

  factory ProblemsetResult.fromJson(Map json) => ProblemsetResult(
    problems: json["problems"] == null
        ? []
        : List.from(json["problems"].map((x) => ProblemModel.fromJson(x))),
    problemStatistics: json["problemStatistics"] == null
        ? []
        : List.from(
            json["problemStatistics"].map(
              (x) => ProblemStatisticModel.fromJson(x),
            ),
          ),
  );
}
