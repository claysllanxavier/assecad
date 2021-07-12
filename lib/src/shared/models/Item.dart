import 'dart:convert';

class ItemModel {
  String title;
  String subtitle;
  String img;
  String url;

  ItemModel({
    required this.title,
    required this.subtitle,
    required this.img,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'subtitle': subtitle,
      'img': img,
      'url': url,
    };
  }

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(
      title: map['title'],
      subtitle: map['subtitle'],
      img: map['img'],
      url: map['url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemModel.fromJson(String source) =>
      ItemModel.fromMap(json.decode(source));
}
