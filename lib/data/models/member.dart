class Member {
  final String handle;

  Member({required this.handle});

  factory Member.fromJson(Map json) {
    return Member(handle: json['handle'] ?? '');
  }
}
