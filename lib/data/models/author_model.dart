class AuthorModel {
  final int contestId;
  final int participantId;
  final String participantType;
  final int teamId;
  final String teamName;
  final bool ghost;
  final int startTimeSeconds;
  final List members;

  AuthorModel({
    required this.contestId,
    required this.participantId,
    required this.participantType,
    required this.teamId,
    required this.teamName,
    required this.ghost,
    required this.startTimeSeconds,
    required this.members,
  });

  factory AuthorModel.fromJson(Map json) => AuthorModel(
    contestId: json["contestId"] ?? 0,
    participantId: json["participantId"] ?? 0,
    participantType: json["participantType"] ?? 'UNKNOWN',
    teamId: json["teamId"] ?? 0,
    teamName: json["teamName"] ?? '',
    ghost: json["ghost"] ?? false,
    startTimeSeconds: json["startTimeSeconds"] ?? 0,
    members: json["members"] == null
        ? []
        : List.from(json["members"].map((x) => x["handle"] ?? "")),
  );
}
