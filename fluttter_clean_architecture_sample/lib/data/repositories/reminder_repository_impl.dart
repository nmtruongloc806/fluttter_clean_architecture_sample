import 'package:fluttter_clean_architecture_sample/data/local_database/local_database.dart';
import 'package:fluttter_clean_architecture_sample/data/mappers/reminder_mapper.dart';
import 'package:fluttter_clean_architecture_sample/domain/entities/reminder.dart';
import 'package:fluttter_clean_architecture_sample/domain/repositories/reminder_repository.dart';
import 'package:sqflite/sqflite.dart';

class ReminderRepositoryImpl implements ReminderRepository {
  final LocalDatabase localDatabase;

  ReminderRepositoryImpl(this.localDatabase);

  @override
  Future<bool> saveReminder(Reminder reminder) async {
    final db = await localDatabase.database;
    await db.insert('reminders', ReminderMapper.toJson(reminder),
        conflictAlgorithm: ConflictAlgorithm.replace);
    return true;
  }

  @override
  Future<List<Reminder>> getReminders() async {
    final db = await localDatabase.database;
    final List<Map<String, dynamic>> maps = await db.query('reminders');
    return maps.map((map) => ReminderMapper.fromJson(map)).toList();
  }
}
