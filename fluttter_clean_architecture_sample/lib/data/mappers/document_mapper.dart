import 'package:fluttter_clean_architecture_sample/domain/entities/document.dart';

class DocumentMapper {
  static Document fromJson(Map<String, dynamic> json) {
    return Document(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }

  static Map<String, dynamic> toJson(Document document) {
    return {
      'id': document.id,
      'title': document.title,
      'content': document.content,
      'createdAt': document.createdAt.toIso8601String(),
    };
  }
}
