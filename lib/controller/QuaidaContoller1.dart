import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';
import 'dart:convert';
import '../Models/Quaida.dart';

class QuaidaController1 extends GetxController {
  var quaidaList = <Quaida>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchQuaidaDetails();
  }

  void fetchQuaidaDetails() async {
    String jsonData = await rootBundle.loadString('assets/local/quaidas.json');
    List<dynamic> jsonList = jsonDecode(jsonData);
    List<Quaida> details = jsonList.map((e) => Quaida.fromJson(e)).toList();
    quaidaList.assignAll(details);
  }
}
