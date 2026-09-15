import 'package:cf_companion/data/models/contest_model.dart';
import 'package:cf_companion/data/models/problem_model.dart';
import 'package:cf_companion/data/models/rank_row.dart';

class ContestResult {
  final ContestModel contest;
  final List problems;
  final List rows;

  ContestResult({
    required this.contest,
    required this.problems,
    required this.rows,
  });

  factory ContestResult.fromJson(Map json) {
    return ContestResult(
      contest: ContestModel.fromJson(json['contest'] ?? {}),
      problems:
          (json['problems'] as List?)
              ?.map((e) => ProblemModel.fromJson(e))
              .toList() ??
          [],
      rows:
          (json['rows'] as List?)?.map((e) => RankRow.fromJson(e)).toList() ??
          [],
    );
  }
}

