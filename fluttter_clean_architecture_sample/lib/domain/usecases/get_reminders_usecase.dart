import 'package:fluttter_clean_architecture_sample/domain/entities/reminder.dart';
import 'package:fluttter_clean_architecture_sample/domain/repositories/reminder_repository.dart';

abstract class GetRemindersUseCase {
  Future<List<Reminder>> getReminders();
}

class GetRemindersUseCaseImpl implements GetRemindersUseCase {
  final ReminderRepository reminderRepository;

  GetRemindersUseCaseImpl(this.reminderRepository);

  @override
  Future<List<Reminder>> getReminders() {
    return reminderRepository.getReminders();
  }
}
