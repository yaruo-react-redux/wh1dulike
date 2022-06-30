import './user_model.dart';

class FeedModel {
  String? key;
  String? parentKey;
  String? childRetweetKey;
  String? description;
  String? userId;
  int? linkCount;
  List<String>? linkList;
  int? commentCount;
  int? retweetCount;
  String? createAt;
  String? imagePath;
  List<String>? tags;
  List<String>? replyTweetList;
  String? languageCode;
  UserModel? user;

  FeedModel(
      {this.key,
      this.parentKey,
      this.childRetweetKey,
      this.description,
      this.userId,
      this.linkCount,
      this.linkList,
      this.commentCount,
      this.retweetCount,
      this.createAt,
      this.imagePath,
      this.tags,
      this.replyTweetList,
      this.languageCode,
      this.user});

  FeedModel.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    parentKey = json['parentKey'];
    childRetweetKey = json['childRetweetKey'];
    description = json['description'];
    userId = json['userId'];
    linkCount = json['linkCount'];
    linkList = json['linkList'].cast<String>();
    commentCount = json['commentCount'];
    retweetCount = json['retweetCount'];
    createAt = json['createAt'];
    imagePath = json['imagePath'];
    tags = json['tags'].cast<String>();
    replyTweetList = json['replyTweetList'].cast<String>();
    languageCode = json['languageCode'];
    user = json['user'] != null ? UserModel?.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['key'] = key;
    data['parentKey'] = parentKey;
    data['childRetweetKey'] = childRetweetKey;
    data['description'] = description;
    data['userId'] = userId;
    data['linkCount'] = linkCount;
    data['linkList'] = linkList;
    data['commentCount'] = commentCount;
    data['retweetCount'] = retweetCount;
    data['createAt'] = createAt;
    data['imagePath'] = imagePath;
    data['tags'] = tags;
    data['replyTweetList'] = replyTweetList;
    data['languageCode'] = languageCode;
    if (user != null) {
      data['user'] = user?.toJson();
    }
    return data;
  }

  bool get isValidTweet {
    bool isValid = false;
    if (user != null && user!.userName != null && user!.userName!.isNotEmpty) {
      isValid = true;
    } else {
      print("Invalid Tweet found. Id:- $key");
    }
    return isValid;
  }

  String get getTweetKeyToRetweet {
    if (description != null && imagePath != null && childRetweetKey != null) {
      return childRetweetKey!;
    } else {
      return key!;
    }
  }
}
