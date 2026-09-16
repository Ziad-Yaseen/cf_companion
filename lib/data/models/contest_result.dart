import 'package:cf_companion/data/models/contest_model.dart';
import 'package:cf_companion/data/models/problem_model.dart';
import 'package:cf_companion/data/models/rank_row.dart';

class ContestResult {
  final ContestModel contest;
  final List<ProblemModel> problems;
  final List<RankRow> rows;

  const ContestResult({
    required this.contest,
    required this.problems,
    required this.rows,
  });

  factory ContestResult.fromJson(Map<String, dynamic> json) {
    return ContestResult(
      contest: ContestModel.fromJson(json['contest'] ?? {}),
      problems: (json['problems'] as List<dynamic>?)
              ?.map((e) => ProblemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      rows: (json['rows'] as List<dynamic>?)
              ?.map((e) => RankRow.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );
  }
}