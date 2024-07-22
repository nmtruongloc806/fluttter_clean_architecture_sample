import 'package:flutter/material.dart';
import 'package:fluttter_clean_architecture_sample/presentation/pages/document/document_controller.dart';
import 'package:get/get.dart';

class DocumentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DocumentController controller = Get.find();

    return Scaffold(
      appBar: AppBar(title: Text('Documents')),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else if (controller.documents.isEmpty) {
          return Center(child: Text('No documents available.'));
        } else {
          return ListView.builder(
            itemCount: controller.documents.length,
            itemBuilder: (context, index) {
              final document = controller.documents[index];
              return ListTile(
                title: Text(document.title),
                subtitle: Text(document.createdAt.toString()),
              );
            },
          );
        }
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your logic to add a new document
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
