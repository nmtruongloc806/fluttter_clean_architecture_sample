import 'package:fluttter_clean_architecture_sample/domain/entities/document.dart';

abstract class DocumentRepository {
  Future<bool> saveDocument(Document document);
  Future<List<Document>> getDocuments();
}
