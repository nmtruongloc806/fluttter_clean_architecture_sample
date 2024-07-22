import 'package:fluttter_clean_architecture_sample/domain/entities/reminder.dart';
import 'package:fluttter_clean_architecture_sample/domain/repositories/reminder_repository.dart';

abstract class SaveReminderUseCase {
  Future<bool> saveReminder(Reminder reminder);
}

class SaveReminderUseCaseImpl implements SaveReminderUseCase {
  final ReminderRepository reminderRepository;

  SaveReminderUseCaseImpl(this.reminderRepository);

  @override
  Future<bool> saveReminder(Reminder reminder) {
    return reminderRepository.saveReminder(reminder);
  }
}
