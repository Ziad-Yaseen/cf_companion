class ProblemModel {
  final int contestId;
  final String index;
  final String name;
  final String type;
  final double points;
  final int rating;
  final List tags;

  ProblemModel({
    required this.contestId,
    required this.index,
    required this.name,
    required this.type,
    required this.points,
    required this.rating,
    required this.tags,
  });

  factory ProblemModel.fromJson(Map json) => ProblemModel(
    contestId: json["contestId"] ?? 0,
    index: json["index"] ?? '',
    name: json["name"] ?? 'Unknown Problem',
    type: json["type"] ?? 'UNKNOWN',
    points: (json["points"] ?? 0).toDouble(),
    rating: json["rating"] ?? 0,
    tags: json["tags"] == null
        ? []
        : List.from(json["tags"].map((x) => x.toString())),
  );
}
