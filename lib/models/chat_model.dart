class ChatMessage {
  String? key;
  String? senderId;
  String? message;
  bool seen = false;
  String? createdAt;
  String? timeStamp;
  String? senderName;
  String? receiverId;

  ChatMessage(
      {this.key,
      this.senderId,
      this.message,
      this.seen = false,
      this.createdAt,
      this.timeStamp,
      this.senderName,
      this.receiverId});

  ChatMessage.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    senderId = json['senderId'];
    message = json['message'];
    seen = json['seen'] ?? false;
    createdAt = json['createdAt'];
    timeStamp = json['timeStamp'];
    senderName = json['senderName'];
    receiverId = json['receiverId'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['key'] = key;
    data['senderId'] = senderId;
    data['message'] = message;
    data['seen'] = seen;
    data['createdAt'] = createdAt;
    data['timeStamp'] = timeStamp;
    data['senderName'] = senderName;
    data['receiverId'] = receiverId;
    return data;
  }
}
