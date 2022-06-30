import 'dart:convert';

import './user_model.dart';

class NotificationModel {
  String? id;
  String? tweetKey;
  String? updateAt;
  String? createdAt;
  late String? type;
  Map<String, dynamic>? data;

  NotificationModel(
      {this.id,
      this.tweetKey,
      this.updateAt,
      required this.createdAt,
      required this.type,
      required this.data});

  NotificationModel.fromJson(String tweetId, Map<String, dynamic> map) {
    id = tweetId;
    tweetKey = tweetId;
    updateAt = map['updateAt'];
    createdAt = map['createdAt'];
    type = map['type'];
    Map<String, dynamic> data = {};
    if (map.containsKey('data')) {
      data = json.decode(json.encode(map['data'])) as Map<String, dynamic>;
    }
    this.data = data;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['tweetKey'] = tweetKey;
    data['updateAt'] = updateAt;
    data['createdAt'] = createdAt;
    data['type'] = type;
    data['data'] = data;
    return data;
  }
}

extension NotificationModelExtension on NotificationModel {
  UserModel? get user {
    if (data == null) {
      return null;
    }
    return UserModel.fromJson(data);
  }

  DateTime? get timeStamp => updateAt != null || createdAt != null
      ? DateTime.tryParse(updateAt ?? createdAt!)
      : null;
}