import 'package:cf_companion/data/models/party.dart';
import 'package:cf_companion/data/models/problem_result.dart';

class RankRow {
  final Party party;
  final int rank;
  final num points;
  final int penalty;
  final int successfulHackCount;
  final int unsuccessfulHackCount;
  final List problemResults;

  RankRow({
    required this.party,
    required this.rank,
    required this.points,
    required this.penalty,
    required this.successfulHackCount,
    required this.unsuccessfulHackCount,
    required this.problemResults,
  });

  factory RankRow.fromJson(Map json) {
    return RankRow(
      party: Party.fromJson(json['party'] ?? {}),
      rank: json['rank'] ?? 0,
      points: json['points'] ?? 0,
      penalty: json['penalty'] ?? 0,
      successfulHackCount: json['successfulHackCount'] ?? 0,
      unsuccessfulHackCount: json['unsuccessfulHackCount'] ?? 0,
      problemResults:
          (json['problemResults'] as List?)
              ?.map((e) => ProblemResult.fromJson(e))
              .toList() ??
          [],
    );
  }
}