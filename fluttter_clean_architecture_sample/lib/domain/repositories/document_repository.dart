abstract class DocumentRepository {
  Future<bool> saveDocument(Document document);
  Future<List<Document>> getDocuments();
}
