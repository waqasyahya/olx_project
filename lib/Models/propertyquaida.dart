class QuaidaDetail {
  final String id;
  final String quaidaId;
  final String wordsArabic;
  final String wordsId;
  final String wordsUrdu;
  final String audio1;

  QuaidaDetail({
    required this.id,
    required this.quaidaId,
    required this.wordsArabic,
    required this.wordsId,
    required this.wordsUrdu,
    required this.audio1,
  });

  factory QuaidaDetail.fromJson(Map<String, dynamic> json) {
    return QuaidaDetail(
      id: json['id'],
      quaidaId: json['Quaida_id'],
      wordsArabic: json['Words_Arabic'],
      wordsId: json['Words_id'],
      wordsUrdu: json['Words_Urdu'] ?? '',
      audio1: json['audio1'],
    );
  }
}
