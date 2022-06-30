import 'dart:convert';

class LinkMediaInfoModel {
  final String? title;
  final String? html;
  final int? height;
  final String? version;
  final int? thumbnailHeight;
  final String? providerUrl;
  final int? width;
  final String? providerName;
  final String? url;
  final String? type;
  final String? authorUrl;
  final String? thumbnailUrl;
  final int? thumbnailWidth;
  final String? authorName;

  LinkMediaInfoModel(
      {this.title,
      this.html,
      this.height,
      this.version,
      this.thumbnailHeight,
      this.providerUrl,
      this.width,
      this.providerName,
      this.url,
      this.type,
      this.authorUrl,
      this.thumbnailUrl,
      this.thumbnailWidth,
      this.authorName});

  factory LinkMediaInfoModel.fromRawJson(String str) =>
      LinkMediaInfoModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LinkMediaInfoModel.fromJson(Map<String, dynamic> json) => LinkMediaInfoModel(
        title: json['title'] as String,
        html: json['html'] as String,
        height: json['height'] as int,
        version: json['version'] as String,
        thumbnailHeight: json['thumbnailHeight'] as int,
        providerUrl: json['providerUrl'] as String,
        width: json['width'] as int,
        providerName: json['providerName'] as String,
        url: json['url'] as String,
        type: json['type'] as String,
        authorUrl: json['authorUrl'] as String,
        thumbnailUrl: json['thumbnailUrl'] as String,
        thumbnailWidth: json['thumbnailWidth'] as int,
        authorName: json['authorName'] as String,
      );

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['html'] = html;
    data['height'] = height;
    data['version'] = version;
    data['thumbnailHeight'] = thumbnailHeight;
    data['providerUrl'] = providerUrl;
    data['width'] = width;
    data['providerName'] = providerName;
    data['url'] = url;
    data['type'] = type;
    data['authorUrl'] = authorUrl;
    data['thumbnailUrl'] = thumbnailUrl;
    data['thumbnailWidth'] = thumbnailWidth;
    data['authorName'] = authorName;
    return data;
  }
}
