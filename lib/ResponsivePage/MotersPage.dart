import 'package:flutter/material.dart';
import '../Models/hadith.dart';
import '../controller/hadithload.dart';

class MobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hadith List - Mobile'),
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

class TabletView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hadith List - Tablet'),
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
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3,
              ),
              itemCount: hadiths.length,
              itemBuilder: (context, index) {
                final hadith = hadiths[index];
                return Card(
                  child: ListTile(
                    title: Text(hadith.topic),
                    subtitle: Text('Hadith Count: ${hadith.hadithCount}'),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}

class DesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hadith List - Desktop'),
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
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 3,
              ),
              itemCount: hadiths.length,
              itemBuilder: (context, index) {
                final hadith = hadiths[index];
                return Card(
                  child: ListTile(
                    title: Text(hadith.topic),
                    subtitle: Text('Hadith Count: ${hadith.hadithCount}'),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
