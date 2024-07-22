import 'package:flutter/material.dart';
import 'package:fluttter_clean_architecture_sample/presentation/pages/reminder/reminder_controller.dart';
import 'package:get/get.dart';

class ReminderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ReminderController controller = Get.find();

    return Scaffold(
      appBar: AppBar(title: Text('Reminders')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else if (controller.reminders.isEmpty) {
          return Center(child: Text('No reminders available.'));
        } else {
          return ListView.builder(
            itemCount: controller.reminders.length,
            itemBuilder: (context, index) {
              final reminder = controller.reminders[index];
              return ListTile(
                title: Text(reminder.title),
                subtitle: Text(reminder.dateTime.toString()),
              );
            },
          );
        }
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your logic to add a new reminder
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
