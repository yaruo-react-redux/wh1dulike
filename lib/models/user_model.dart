class UserModel {
  String? key;
  String? email;
  String? userId;
  String? displayName;
  String? userName;
  String? webSite;
  String? profilePicture;
  String? bannerImage;
  String? contact;
  String? bio;
  String? location;
  String? dob;
  String? createdAt;
  bool? isVerified;
  int? followersCount;
  int? followingCount;
  String? fcmToken;
  List<String>? followingList;
  List<String>? followersList;

  UserModel(
      {this.key,
      this.email,
      this.userId,
      this.displayName,
      this.userName,
      this.webSite,
      this.profilePicture,
      this.bannerImage,
      this.contact,
      this.bio,
      this.location,
      this.dob,
      this.createdAt,
      this.isVerified,
      this.followersCount,
      this.followingCount,
      this.fcmToken,
      this.followingList,
      this.followersList});

  UserModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return;
    }
    key = json['key'];
    email = json['email'];
    userId = json['userId'];
    displayName = json['displayName'];
    userName = json['userName'];
    webSite = json['webSite'];
    profilePicture = json['profilePicture'];
    bannerImage = json['bannerImage'];
    contact = json['contact'];
    bio = json['bio'];
    location = json['location'];
    dob = json['dob'];
    createdAt = json['createdAt'];
    isVerified = json['isVerified'];
    followersCount = json['followersCount'];
    followingCount = json['followingCount'];
    fcmToken = json['fcmToken'];
    followingList = json['followingList'].cast<String>();
    followersList = json['followersList'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['key'] = key;
    data['email'] = email;
    data['userId'] = userId;
    data['displayName'] = displayName;
    data['userName'] = userName;
    data['webSite'] = webSite;
    data['profilePicture'] = profilePicture;
    data['bannerImage'] = bannerImage;
    data['contact'] = contact;
    data['bio'] = bio;
    data['location'] = location;
    data['dob'] = dob;
    data['createdAt'] = createdAt;
    data['isVerified'] = isVerified;
    data['followersCount'] = followersCount;
    data['followingCount'] = followingCount;
    data['fcmToken'] = fcmToken;
    data['followingList'] = followingList;
    data['followersList'] = followersList;
    return data;
  }

  UserModel.fromMap(Map<String, dynamic> data) {
    key = data['key'];
    email = data['email'];
    userId = data['userId'];
    displayName = data['displayName'];
    userName = data['userName'];
    webSite = data['webSite'];
    profilePicture = data['profilePicture'];
    bannerImage = data['bannerImage'];
    contact = data['contact'];
    bio = data['bio'];
    location = data['location'];
    dob = data['dob'];
    createdAt = data['createdAt'];
    isVerified = data['isVerified'];
    followersCount = data['followersCount'];
    followingCount = data['followingCount'];
    fcmToken = data['fcmToken'];
    followingList = data['followingList'].cast<String>();
    followersList = data['followersList'].cast<String>();
  }

  String get getFollowingCount {
    return '${followingCount ?? 0}';
  }

  String get getFollowersCount {
    return '${followersCount ?? 0}';
  }

  List<Object?> get props => [
        key,
        email,
        userId,
        displayName,
        userName,
        webSite,
        profilePicture,
        bannerImage,
        contact,
        bio,
        location,
        dob,
        createdAt,
        isVerified,
        followersCount,
        followingCount,
        fcmToken,
        followingList,
        followersList,
      ];
}
