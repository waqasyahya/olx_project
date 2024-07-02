import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import '../controller/quaidacontroller.dart';

class propertypage extends StatelessWidget {
  final QuaidaController controller = Get.put(QuaidaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quaida Details'),
      ),
      body: Obx(() {
        if (controller.quaidaDetails.isEmpty) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: controller.quaidaDetails.length,
            itemBuilder: (context, index) {
              var detail = controller.quaidaDetails[index];
              return ListTile(
                title: Text(detail.wordsArabic ?? ''),
                subtitle: Text(detail.quaidaId ?? ''),
                // Add more UI elements as per your requirement
              );
            },
          );
        }
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.fetchQuaidaDetails();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
