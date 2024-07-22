import 'package:fluttter_clean_architecture_sample/domain/entities/document.dart';
import 'package:fluttter_clean_architecture_sample/domain/repositories/document_repository.dart';

abstract class GetDocumentsUseCase {
  Future<List<Document>> getDocuments();
}

class GetDocumentsUseCaseImpl implements GetDocumentsUseCase {
  final DocumentRepository documentRepository;

  GetDocumentsUseCaseImpl(this.documentRepository);

  @override
  Future<List<Document>> getDocuments() {
    return documentRepository.getDocuments();
  }
}
