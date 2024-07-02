import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'dart:convert';

import '../Models/propertyquaida.dart';

class QuaidaController extends GetxController {
  var quaidaDetails = <QuaidaDetail>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchQuaidaDetails();
  }

  void fetchQuaidaDetails() async {
    String jsonData = await rootBundle.loadString('assets/local/quaida_details.json');
    List<dynamic> jsonList = jsonDecode(jsonData);
    List<QuaidaDetail> details = jsonList.map((e) => QuaidaDetail.fromJson(e)).toList();
    quaidaDetails.assignAll(details);
  }
}
