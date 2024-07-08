import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/quaidacontroller.dart';

class QuaidaDetailPage extends StatelessWidget {
  final String quaidaId;
  final QuaidaDetailController quaidaDetailController = Get.put(QuaidaDetailController());

  QuaidaDetailPage({required this.quaidaId});

  @override
  Widget build(BuildContext context) {
    quaidaDetailController.fetchQuaidaDetailsByQuaidaId(quaidaId);

    return Scaffold(
      appBar: AppBar(
        title: Text('Quaida Details'),
      ),
      body: Obx(() {
        if (quaidaDetailController.quaidaDetails.isEmpty) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: quaidaDetailController.quaidaDetails.length,
            itemBuilder: (context, index) {
              final detail = quaidaDetailController.quaidaDetails[index];
              return ListTile(
                title: Text(detail.wordsArabic),
                subtitle: Text('Urdu: ${detail.wordsUrdu}\nAudio: ${detail.audio1}'),
              );
            },
          );
        }
      }),
    );
  }
}
