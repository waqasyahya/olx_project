import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olx_project/screens/property.dart';
import '../controller/QuaidaContoller1.dart';


class QuaidaListPage extends StatelessWidget {
  final QuaidaController1 quaidaController = Get.put(QuaidaController1());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quaida List'),
      ),
      body: Obx(() {
        if (quaidaController.quaidaList.isEmpty) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: quaidaController.quaidaList.length,
            itemBuilder: (context, index) {
              final quaida = quaidaController.quaidaList[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05,
                      vertical: MediaQuery.of(context).size.height * 0.02,
                    ),
                    title: Text(
                      quaida.Quaida_Name,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      quaida.Quaida_Words,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                      ),
                    ),
                    onTap: () {
                      Get.to(() => QuaidaDetailPage(quaidaId: quaida.id));
                    },
                  ),
                ),
              );
            },
          );
        }
      }),
    );
  }
}
