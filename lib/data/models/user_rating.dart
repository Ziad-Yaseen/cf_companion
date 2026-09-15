class UserRating {
  final int contestId;
  final String contestName;
  final String handle;
  final int rank;
  final int ratingUpdateTimeSeconds;
  final int oldRating;
  final int newRating;

  UserRating({
    required this.contestId,
    required this.contestName,
    required this.handle,
    required this.rank,
    required this.ratingUpdateTimeSeconds,
    required this.oldRating,
    required this.newRating,
  });

  factory UserRating.fromJson(Map json) => UserRating(
    contestId: json["contestId"] ?? 0,
    contestName: json["contestName"] ?? 'Unknown Contest',
    handle: json["handle"] ?? 'NO_HANDLE',
    rank: json["rank"] ?? 0,
    ratingUpdateTimeSeconds: json["ratingUpdateTimeSeconds"] ?? 0,
    oldRating: json["oldRating"] ?? 0,
    newRating: json["newRating"] ?? 0,
  );
}
