import 'package:fluttter_clean_architecture_sample/domain/entities/reminder.dart';

class ReminderMapper {
  static Reminder fromJson(Map<String, dynamic> json) {
    return Reminder(
      id: json['id'],
      title: json['title'],
      dateTime: DateTime.parse(json['dateTime']),
    );
  }

  static Map<String, dynamic> toJson(Reminder reminder) {
    return {
      'id': reminder.id,
      'title': reminder.title,
      'dateTime': reminder.dateTime.toIso8601String(),
    };
  }
}
