import 'dart:convert';

class PushNotificationModel {
	final String id;
	final String type;
	final String receiverId;
	final String senderId;
	final String title;
	final String body;
	final String tweetId;

  PushNotificationModel({
    required this.id,
    required this.type,
    required this.receiverId,
    required this.senderId,
    required this.title,
    required this.body,
    required this.tweetId,
  });

  factory PushNotificationModel.fromRawJson(String str) =>
      PushNotificationModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PushNotificationModel.fromJson(Map<String, dynamic> json) =>
      PushNotificationModel(
        id: json['id'] as String,
        type: json['type'] as String,
        receiverId: json['receiverId'] as String,
        senderId: json['senderId'] as String,
        title: json['title'] as String,
        body: json['body'] as String,
        tweetId: json['tweetId'] as String,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'type': type,
        'receiverId': receiverId,
        'senderId': senderId,
        'title': title,
        'body': body,
        'tweetId': tweetId,
      };
}

class Notification {
  final String body;
  final String title;

  Notification({
    required this.body,
    required this.title,
  });

  factory Notification.fromRawJson(String str) => Notification.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Notification.fromJson(Map<String, dynamic> json) => Notification(
        body: json['body'] as String,
        title: json['title'] as String,
      );

  Map<String, dynamic> toJson() => {
        'body': body,
        'title': title,
      };
}