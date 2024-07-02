class Hadith {
  final int id;
  final String topic;
  final int hadithCount;

  Hadith({
    required this.id,
    required this.topic,
    required this.hadithCount,
  });

  factory Hadith.fromJson(Map<String, dynamic> json) {
    return Hadith(
      id: json['Id'],
      topic: json['Topic'],
      hadithCount: json['HadithCount'],
    );
  }
}
