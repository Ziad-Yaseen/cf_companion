class ContestModel {
  final int id;
  final String name;
  final String type;
  final String phase;
  final bool frozen;
  final int durationSeconds;
  final int startTimeSeconds;
  final int relativeTimeSeconds;
  final int freezeDurationSeconds;

  ContestModel({
    required this.id,
    required this.name,
    required this.type,
    required this.phase,
    required this.frozen,
    required this.durationSeconds,
    required this.startTimeSeconds,
    required this.relativeTimeSeconds,
    required this.freezeDurationSeconds,
  });

  factory ContestModel.fromJson(Map json) => ContestModel(
    id: json["id"] ?? 0,
    name: json["name"] ?? 'Unknown Contest',
    type: json["type"] ?? 'UNKNOWN',
    phase: json["phase"] ?? 'UNKNOWN',
    frozen: json["frozen"] ?? false,
    durationSeconds: json["durationSeconds"] ?? 0,
    startTimeSeconds: json["startTimeSeconds"] ?? 0,
    relativeTimeSeconds: json["relativeTimeSeconds"] ?? 0,
    freezeDurationSeconds: json["freezeDurationSeconds"] ?? 0,
  );
}
