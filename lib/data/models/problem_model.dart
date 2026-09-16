class ProblemModel {
  final int? contestId;
  final String index;
  final String name;
  final String type;
  final double? points;
  final int? rating;
  final List<String> tags;

  const ProblemModel({
    this.contestId,
    required this.index,
    required this.name,
    required this.type,
    this.points,
    this.rating,
    required this.tags,
  });

  factory ProblemModel.fromJson(Map<String, dynamic> json) => ProblemModel(
    contestId: json['contestId'],
    index: json['index'] ?? '',
    name: json['name'] ?? 'Unknown Problem',
    type: json['type'] ?? 'PROGRAMMING',
    points: (json['points'] as num?)?.toDouble(),
    rating: json['rating'],
    tags:
        (json['tags'] as List<dynamic>?)?.map((e) => e.toString()).toList() ??
        const [],
  );

  String get uniqueKey => '${contestId ?? 0}$index';

  bool get isRated => rating != null;

  String get ratingLabel => rating?.toString() ?? 'Unrated';
}
