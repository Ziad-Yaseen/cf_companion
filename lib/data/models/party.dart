import 'package:cf_companion/data/models/member.dart';

class Party {
  final int? contestId;
  final List<Member> members;
  final String participantType;
  final int? teamId;
  final String? teamName;
  final bool ghost;
  final int? room;
  final int startTimeSeconds;

  const Party({
    this.contestId,
    required this.members,
    required this.participantType,
    this.teamId,
    this.teamName,
    required this.ghost,
    this.room,
    required this.startTimeSeconds,
  });

  factory Party.fromJson(Map<String, dynamic> json) {
    return Party(
      contestId: json['contestId'],
      members:
          (json['members'] as List<dynamic>?)
              ?.map((e) => Member.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      participantType: json['participantType'] ?? 'CONTESTANT',
      teamId: json['teamId'],
      teamName: json['teamName'],
      ghost: json['ghost'] ?? false,
      room: json['room'],
      startTimeSeconds: json['startTimeSeconds'] ?? 0,
    );
  }

  String get displayName {
    if (teamName != null && teamName!.isNotEmpty) return teamName!;
    if (members.isNotEmpty) return members.first.handle;
    return 'Unknown';
  }
}
