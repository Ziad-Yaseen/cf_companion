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

  UserInfoModel({
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

  factory UserInfoModel.fromJson(Map json) => UserInfoModel(
    handle: json["handle"] ?? 'NO_HANDLE',
    avatar: json["avatar"] ?? "", // Image
    titlePhoto: json["titlePhoto"] ?? "", // Image
    lastOnlineTimeSeconds: json["lastOnlineTimeSeconds"] ?? 0,
    registrationTimeSeconds: json["registrationTimeSeconds"] ?? 0,
    friendOfCount: json["friendOfCount"] ?? 0,
    contribution: json["contribution"] ?? 0,
    firstName: json["firstName"] ?? 'No Name',
    lastName: json["lastName"] ?? 'No Name',
    country: json["country"] ?? 'Unknown',
    city: json["city"] ?? 'Unknown',
    organization: json["organization"] ?? 'Unknown',
    rating: json["rating"] ?? 0,
    maxRating: json["maxRating"] ?? 0,
    rank: json["rank"] ?? 'Unrated',
    maxRank: json["maxRank"] ?? 'Unrated',
  );
}
