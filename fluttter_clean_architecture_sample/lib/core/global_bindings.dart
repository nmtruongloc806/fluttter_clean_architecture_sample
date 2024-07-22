import 'package:dio/dio.dart';
import 'package:fluttter_clean_architecture_sample/data/clients/api_client.dart';
import 'package:fluttter_clean_architecture_sample/data/local_database/local_database.dart';
import 'package:fluttter_clean_architecture_sample/data/repositories/auth_repository_impl.dart';
import 'package:fluttter_clean_architecture_sample/data/repositories/user_repository_impl.dart';
import 'package:fluttter_clean_architecture_sample/domain/repositories/auth_repository.dart';
import 'package:fluttter_clean_architecture_sample/domain/repositories/user_repository.dart';
import 'package:fluttter_clean_architecture_sample/domain/usecases/login_usecase.dart';
import 'package:fluttter_clean_architecture_sample/domain/usecases/register_usecase.dart';
import 'package:fluttter_clean_architecture_sample/domain/usecases/update_user_info_usecase.dart';
import 'package:fluttter_clean_architecture_sample/presentation/pages/document/document_controller.dart';
import 'package:fluttter_clean_architecture_sample/presentation/pages/reminder/reminder_controller.dart';
import 'package:get/get.dart';
import 'package:fluttter_clean_architecture_sample/data/repositories/reminder_repository_impl.dart';
import 'package:fluttter_clean_architecture_sample/data/repositories/document_repository_impl.dart';
import 'package:fluttter_clean_architecture_sample/domain/repositories/reminder_repository.dart';
import 'package:fluttter_clean_architecture_sample/domain/repositories/document_repository.dart';
import 'package:fluttter_clean_architecture_sample/domain/usecases/save_reminder_usecase.dart';
import 'package:fluttter_clean_architecture_sample/domain/usecases/get_reminders_usecase.dart';
import 'package:fluttter_clean_architecture_sample/domain/usecases/save_document_usecase.dart';
import 'package:fluttter_clean_architecture_sample/domain/usecases/get_documents_usecase.dart';

class GlobalBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dio>(() => Dio(BaseOptions(
          baseUrl: 'https://api.example.com',
          connectTimeout: const Duration(milliseconds: 5000),
          receiveTimeout: const Duration(milliseconds: 3000),
        )));
    Get.lazyPut<ApiClient>(() => ApiClient(dio: Get.find()));
    Get.lazyPut<LocalDatabase>(() => LocalDatabase());

    Get.lazyPut<AuthRepository>(() => AuthRepositoryImpl(Get.find()));
    Get.lazyPut<UserRepository>(() => UserRepositoryImpl(
          apiClient: Get.find(),
          localDatabase: Get.find(),
        ));
    Get.lazyPut<ReminderRepository>(() => ReminderRepositoryImpl(Get.find()));
    Get.lazyPut<DocumentRepository>(() => DocumentRepositoryImpl(Get.find()));

    Get.lazyPut<LoginUseCase>(() => LoginUseCaseImpl(Get.find()));
    Get.lazyPut<RegisterUseCase>(() => RegisterUseCaseImpl(Get.find()));
    Get.lazyPut<UpdateUserInfoUseCase>(
        () => UpdateUserInfoUseCaseImpl(Get.find()));
    Get.lazyPut<SaveReminderUseCase>(() => SaveReminderUseCaseImpl(Get.find()));
    Get.lazyPut<GetRemindersUseCase>(() => GetRemindersUseCaseImpl(Get.find()));
    Get.lazyPut<SaveDocumentUseCase>(() => SaveDocumentUseCaseImpl(Get.find()));
    Get.lazyPut<GetDocumentsUseCase>(() => GetDocumentsUseCaseImpl(Get.find()));

    Get.lazyPut<ReminderController>(() => ReminderController(
          getRemindersUseCase: Get.find(),
          saveReminderUseCase: Get.find(),
        ));
    Get.lazyPut<DocumentController>(() => DocumentController(
          getDocumentsUseCase: Get.find(),
          saveDocumentUseCase: Get.find(),
        ));
  }
}
