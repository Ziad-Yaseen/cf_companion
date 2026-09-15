import 'package:cf_companion/data/models/member.dart';

class Party {
  final int contestId;
  final int participantId;
  final List members;
  final String participantType;
  final bool ghost;
  final int? room;
  final int startTimeSeconds;

  Party({
    required this.contestId,
    required this.participantId,
    required this.members,
    required this.participantType,
    required this.ghost,
    this.room,
    required this.startTimeSeconds,
  });

  factory Party.fromJson(Map json) {
    return Party(
      contestId: json['contestId'] ?? 0,
      participantId: json['participantId'] ?? 0,
      members:
          (json['members'] as List?)?.map((e) => Member.fromJson(e)).toList() ??
          [],
      participantType: json['participantType'] ?? '',
      ghost: json['ghost'] ?? false,
      room: json['room'],
      startTimeSeconds: json['startTimeSeconds'] ?? 0,
    );
  }
}