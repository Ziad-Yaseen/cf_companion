import 'package:cf_companion/data/models/author_model.dart';
import 'package:cf_companion/data/models/problem_model.dart';

class UserStates {
  final int id;
  final int contestId;
  final int creationTimeSeconds;
  final int relativeTimeSeconds;
  final ProblemModel problem;
  final AuthorModel author;
  final String programmingLanguage;
  final String verdict;
  final String testset;
  final int passedTestCount;
  final int timeConsumedMillis;
  final int memoryConsumedBytes;

  UserStates({
    required this.id,
    required this.contestId,
    required this.creationTimeSeconds,
    required this.relativeTimeSeconds,
    required this.problem,
    required this.author,
    required this.programmingLanguage,
    required this.verdict,
    required this.testset,
    required this.passedTestCount,
    required this.timeConsumedMillis,
    required this.memoryConsumedBytes,
  });

  factory UserStates.fromJson(Map json) => UserStates(
    id: json["id"] ?? 0,
    contestId: json["contestId"] ?? 0,
    creationTimeSeconds: json["creationTimeSeconds"] ?? 0,
    relativeTimeSeconds: json["relativeTimeSeconds"] ?? 0,
    problem: ProblemModel.fromJson(json["problem"] ?? {}),
    author: AuthorModel.fromJson(json["author"] ?? {}),
    programmingLanguage: json["programmingLanguage"] ?? 'Unknown Language',
    verdict: json["verdict"] ?? 'UNKNOWN',
    testset: json["testset"] ?? 'UNKNOWN',
    passedTestCount: json["passedTestCount"] ?? 0,
    timeConsumedMillis: json["timeConsumedMillis"] ?? 0,
    memoryConsumedBytes: json["memoryConsumedBytes"] ?? 0,
  );
}
