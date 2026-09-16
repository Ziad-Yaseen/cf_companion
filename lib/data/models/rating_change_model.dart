class RatingChangeModel {
  final int contestId;
  final String contestName;
  final String handle;
  final int rank;
  final int ratingUpdateTimeSeconds;
  final int oldRating;
  final int newRating;

  const RatingChangeModel({
    required this.contestId,
    required this.contestName,
    required this.handle,
    required this.rank,
    required this.ratingUpdateTimeSeconds,
    required this.oldRating,
    required this.newRating,
  });

  factory RatingChangeModel.fromJson(Map<String, dynamic> json) =>
      RatingChangeModel(
        contestId: json['contestId'] ?? 0,
        contestName: json['contestName'] ?? 'Unknown Contest',
        handle: json['handle'] ?? 'NO_HANDLE',
        rank: json['rank'] ?? 0,
        ratingUpdateTimeSeconds: json['ratingUpdateTimeSeconds'] ?? 0,
        oldRating: json['oldRating'] ?? 0,
        newRating: json['newRating'] ?? 0,
      );

  int get delta => newRating - oldRating;
  bool get isPositive => delta >= 0;

  DateTime get date =>
      DateTime.fromMillisecondsSinceEpoch(ratingUpdateTimeSeconds * 1000);
}
