import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';
import 'dart:convert';

import '../Models/propertyquaida.dart';

class QuaidaDetailController extends GetxController {
  var quaidaDetails = <QuaidaDetail>[].obs;

  void fetchQuaidaDetailsByQuaidaId(String quaidaId) async {
    String jsonData = await rootBundle.loadString('assets/local/quaida_details.json');
    List<dynamic> jsonList = jsonDecode(jsonData);
    List<QuaidaDetail> details = jsonList
        .map((e) => QuaidaDetail.fromJson(e))
        .where((detail) => detail.quaidaId == quaidaId)
        .toList();
    quaidaDetails.assignAll(details);
  }
}
