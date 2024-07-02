import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import '../Models/hadith.dart';

Future<List<Hadith>> loadHadithData() async {
  final String response = await rootBundle.loadString('assets/local/chapters.json');
  final List<dynamic> data = json.decode(response);
  return data.map((json) => Hadith.fromJson(json)).toList();
}
