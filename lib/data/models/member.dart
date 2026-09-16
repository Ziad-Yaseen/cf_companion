class Member {
  final String handle;

  const Member({required this.handle});

  factory Member.fromJson(Map<String, dynamic> json) {
    return Member(handle: json['handle'] ?? '');
  }
}
