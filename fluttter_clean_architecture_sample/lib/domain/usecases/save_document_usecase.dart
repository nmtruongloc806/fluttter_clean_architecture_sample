import 'package:fluttter_clean_architecture_sample/domain/entities/document.dart';
import 'package:fluttter_clean_architecture_sample/domain/repositories/document_repository.dart';

abstract class SaveDocumentUseCase {
  Future<bool> saveDocument(Document document);
}

class SaveDocumentUseCaseImpl implements SaveDocumentUseCase {
  final DocumentRepository documentRepository;

  SaveDocumentUseCaseImpl(this.documentRepository);

  @override
  Future<bool> saveDocument(Document document) {
    return documentRepository.saveDocument(document);
  }
}
