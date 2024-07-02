import 'package:flutter/material.dart';

import '../Models/hadith.dart';
import '../controller/hadithload.dart';

class Moterpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hadith List'),
      ),
      body: FutureBuilder<List<Hadith>>(
        future: loadHadithData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final hadiths = snapshot.data!;
            return ListView.builder(
              itemCount: hadiths.length,
              itemBuilder: (context, index) {
                final hadith = hadiths[index];
                return ListTile(
                  title: Text(hadith.topic),
                  subtitle: Text('Hadith Count: ${hadith.hadithCount}'),
                );
              },
            );
          }
        },
      ),
    );
  }
}
