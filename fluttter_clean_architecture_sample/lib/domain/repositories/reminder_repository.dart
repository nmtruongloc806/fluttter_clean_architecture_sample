import 'package:fluttter_clean_architecture_sample/domain/entities/reminder.dart';

abstract class ReminderRepository {
  Future<bool> saveReminder(Reminder reminder);
  Future<List<Reminder>> getReminders();
}
