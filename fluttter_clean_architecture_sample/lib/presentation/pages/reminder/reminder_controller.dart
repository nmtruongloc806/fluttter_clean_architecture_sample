import 'package:flutter/material.dart';
import 'package:fluttter_clean_architecture_sample/domain/entities/reminder.dart';
import 'package:fluttter_clean_architecture_sample/domain/usecases/get_reminders_usecase.dart';
import 'package:fluttter_clean_architecture_sample/domain/usecases/save_reminder_usecase.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';

class ReminderController extends GetxController {
  final GetRemindersUseCase getRemindersUseCase;
  final SaveReminderUseCase saveReminderUseCase;

  var reminders = <Reminder>[].obs;
  var isLoading = false.obs;

  ReminderController({
    required this.getRemindersUseCase,
    required this.saveReminderUseCase,
  });

  @override
  void onInit() {
    super.onInit();
    fetchReminders();
  }

  void fetchReminders() async {
    isLoading.value = true;
    reminders.value = await getRemindersUseCase.getReminders();
    isLoading.value = false;
  }

  void addReminder(Reminder reminder) async {
    final success = await saveReminderUseCase.saveReminder(reminder);
    if (success) {
      fetchReminders();
    }
  }
}
