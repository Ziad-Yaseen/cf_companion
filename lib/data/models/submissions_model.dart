import 'package:cf_companion/data/models/party.dart';
import 'package:cf_companion/data/models/problem_model.dart';

class SubmissionModel {
  final int id;
  final int? contestId;
  final int creationTimeSeconds;
  final int? relativeTimeSeconds;
  final ProblemModel problem;
  final Party author;
  final String programmingLanguage;
  final String? verdict;
  final String testset;
  final int passedTestCount;
  final int timeConsumedMillis;
  final int memoryConsumedBytes;

  const SubmissionModel({
    required this.id,
    this.contestId,
    required this.creationTimeSeconds,
    this.relativeTimeSeconds,
    required this.problem,
    required this.author,
    required this.programmingLanguage,
    this.verdict,
    required this.testset,
    required this.passedTestCount,
    required this.timeConsumedMillis,
    required this.memoryConsumedBytes,
  });

  factory SubmissionModel.fromJson(Map<String, dynamic> json) =>
      SubmissionModel(
        id: json['id'] ?? 0,
        contestId: json['contestId'],
        creationTimeSeconds: json['creationTimeSeconds'] ?? 0,
        relativeTimeSeconds: json['relativeTimeSeconds'],
        problem: ProblemModel.fromJson(json['problem'] ?? {}),
        author: Party.fromJson(json['author'] ?? {}),
        programmingLanguage: json['programmingLanguage'] ?? 'Unknown',
        verdict: json['verdict'],
        testset: json['testset'] ?? 'TESTS',
        passedTestCount: json['passedTestCount'] ?? 0,
        timeConsumedMillis: json['timeConsumedMillis'] ?? 0,
        memoryConsumedBytes: json['memoryConsumedBytes'] ?? 0,
      );

  // ---------------------------------------------------------------------
  // Helpers
  // ---------------------------------------------------------------------
  DateTime get submissionDate =>
      DateTime.fromMillisecondsSinceEpoch(creationTimeSeconds * 1000);

  bool get isAccepted => verdict == 'OK';
  bool get isJudging => verdict == null || verdict == 'TESTING';
  bool get isFailed => !isAccepted && !isJudging;

  double get memoryConsumedMb => memoryConsumedBytes / (1024 * 1024);

  String get verdictLabel => verdict ?? 'Judging...';
}
