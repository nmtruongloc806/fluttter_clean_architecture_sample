import 'package:fluttter_clean_architecture_sample/domain/entities/document.dart';
import 'package:fluttter_clean_architecture_sample/domain/usecases/get_documents_usecase.dart';
import 'package:fluttter_clean_architecture_sample/domain/usecases/save_document_usecase.dart';
import 'package:get/get.dart';

class DocumentController extends GetxController {
  final GetDocumentsUseCase getDocumentsUseCase;
  final SaveDocumentUseCase saveDocumentUseCase;

  var documents = <Document>[].obs;
  var isLoading = false.obs;

  DocumentController({
    required this.getDocumentsUseCase,
    required this.saveDocumentUseCase,
  });

  @override
  void onInit() {
    super.onInit();
    fetchDocuments();
  }

  void fetchDocuments() async {
    isLoading.value = true;
    documents.value = await getDocumentsUseCase.getDocuments();
    isLoading.value = false;
  }

  void addDocument(Document document) async {
    final success = await saveDocumentUseCase.saveDocument(document);
    if (success) {
      fetchDocuments();
    }
  }
}
