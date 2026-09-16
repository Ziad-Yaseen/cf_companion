class ContestModel {
  final int id;
  final String name;
  final String type;
  final String phase;
  final bool frozen;
  final int durationSeconds;
  final int? startTimeSeconds;
  final int? relativeTimeSeconds;
  final int? freezeDurationSeconds;

  const ContestModel({
    required this.id,
    required this.name,
    required this.type,
    required this.phase,
    required this.frozen,
    required this.durationSeconds,
    this.startTimeSeconds,
    this.relativeTimeSeconds,
    this.freezeDurationSeconds,
  });

  factory ContestModel.fromJson(Map<String, dynamic> json) => ContestModel(
        id: json['id'] ?? 0,
        name: json['name'] ?? 'Unknown Contest',
        type: json['type'] ?? 'UNKNOWN',
        phase: json['phase'] ?? 'UNKNOWN',
        frozen: json['frozen'] ?? false,
        durationSeconds: json['durationSeconds'] ?? 0,
        startTimeSeconds: json['startTimeSeconds'],
        relativeTimeSeconds: json['relativeTimeSeconds'],
        freezeDurationSeconds: json['freezeDurationSeconds'],
      );

  DateTime? get startTime => startTimeSeconds == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(startTimeSeconds! * 1000);

  Duration get duration => Duration(seconds: durationSeconds);

  bool get isUpcoming => phase == 'BEFORE';
  bool get isRunning => phase == 'CODING';
  bool get isFinished => phase == 'FINISHED';
  bool get isJudging =>
      phase == 'PENDING_SYSTEM_TEST' || phase == 'SYSTEM_TEST';

  Duration? get timeUntilStart {
    final start = startTime;
    if (start == null) return null;
    final diff = start.difference(DateTime.now());
    return diff.isNegative ? null : diff;
  }
}