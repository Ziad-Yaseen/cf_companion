class ProblemResult {
  final num points;
  final int rejectedAttemptCount;
  final String type;
  final int? bestSubmissionTimeSeconds;

  const ProblemResult({
    required this.points,
    required this.rejectedAttemptCount,
    required this.type,
    this.bestSubmissionTimeSeconds,
  });

  factory ProblemResult.fromJson(Map<String, dynamic> json) {
    return ProblemResult(
      points: json['points'] ?? 0,
      rejectedAttemptCount: json['rejectedAttemptCount'] ?? 0,
      type: json['type'] ?? 'PRELIMINARY',
      bestSubmissionTimeSeconds: json['bestSubmissionTimeSeconds'],
    );
  }

  ProblemCellState get cellState {
    if (points > 0) return ProblemCellState.solved;
    if (rejectedAttemptCount > 0) return ProblemCellState.attemptedFailed;
    return ProblemCellState.untouched;
  }
}

enum ProblemCellState { solved, attemptedFailed, untouched }
