class UserInfoModel {
  final String handle;
  final String avatar;
  final String titlePhoto;
  final int lastOnlineTimeSeconds;
  final int registrationTimeSeconds;
  final int friendOfCount;
  final int contribution;
  final String firstName;
  final String lastName;
  final String country;
  final String city;
  final String organization;
  final int rating;
  final int maxRating;
  final String rank;
  final String maxRank;

  const UserInfoModel({
    required this.handle,
    required this.avatar,
    required this.titlePhoto,
    required this.lastOnlineTimeSeconds,
    required this.registrationTimeSeconds,
    required this.friendOfCount,
    required this.contribution,
    required this.firstName,
    required this.lastName,
    required this.country,
    required this.city,
    required this.organization,
    required this.rating,
    required this.maxRating,
    required this.rank,
    required this.maxRank,
  });

  factory UserInfoModel.fromJson(Map<String, dynamic> json) => UserInfoModel(
    handle: json['handle'] ?? 'NO_HANDLE',
    avatar: json['avatar'] ?? '',
    titlePhoto: json['titlePhoto'] ?? '',
    lastOnlineTimeSeconds: json['lastOnlineTimeSeconds'] ?? 0,
    registrationTimeSeconds: json['registrationTimeSeconds'] ?? 0,
    friendOfCount: json['friendOfCount'] ?? 0,
    contribution: json['contribution'] ?? 0,
    firstName: json['firstName'] ?? '',
    lastName: json['lastName'] ?? '',
    country: json['country'] ?? '',
    city: json['city'] ?? '',
    organization: json['organization'] ?? '',
    rating: json['rating'] ?? 0,
    maxRating: json['maxRating'] ?? 0,
    rank: json['rank'] ?? 'Unrated',
    maxRank: json['maxRank'] ?? 'Unrated',
  );

  // ---------------------------------------------------------------------
  // Helpers
  // ---------------------------------------------------------------------
  DateTime get registrationDate =>
      DateTime.fromMillisecondsSinceEpoch(registrationTimeSeconds * 1000);

  DateTime get lastOnlineDate =>
      DateTime.fromMillisecondsSinceEpoch(lastOnlineTimeSeconds * 1000);

  bool get isRated => rating > 0;

  String get displayName {
    final full = '$firstName $lastName'.trim();
    return full.isEmpty ? handle : full;
  }

  bool get hasLocation => city.isNotEmpty || country.isNotEmpty;

  String get locationLabel {
    if (city.isNotEmpty && country.isNotEmpty) return '$city, $country';
    if (country.isNotEmpty) return country;
    return '';
  }

  String get rankAbbreviation {
    if (rank.isEmpty || rank.toLowerCase() == 'unrated') return 'UR';

    String normalizedRank = rank.toLowerCase().replaceAll(
      'grandmaster',
      'grand master',
    );

    return normalizedRank.split(' ').map((word) {
      return word.isNotEmpty ? word[0].toUpperCase() : '';
    }).join();
  }

  @override
  String toString() {
    return 'UserInfoModel(handle: $handle, rating: $rating, maxRating: $maxRating, rank: $rank)';
  }
}
