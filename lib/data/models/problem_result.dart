class ProblemResult {
  final num points;
  final int rejectedAttemptCount;
  final String type;
  final int? bestSubmissionTimeSeconds;

  ProblemResult({
    required this.points,
    required this.rejectedAttemptCount,
    required this.type,
    this.bestSubmissionTimeSeconds,
  });

  factory ProblemResult.fromJson(Map json) {
    return ProblemResult(
      points: json['points'] ?? 0,
      rejectedAttemptCount: json['rejectedAttemptCount'] ?? 0,
      type: json['type'] ?? '',
      bestSubmissionTimeSeconds: json['bestSubmissionTimeSeconds'],
    );
  }
}
