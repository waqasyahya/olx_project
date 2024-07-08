class Quaida {
  final String id;
  final String Quaida_Name;
  final String Quaida_Words;

  Quaida({
    required this.id,
    required this.Quaida_Name,
    required this.Quaida_Words,
  });

  factory Quaida.fromJson(Map<String, dynamic> json) {
    return Quaida(
      id: json['id'],
      Quaida_Name: json['Quaida_Name'],
      Quaida_Words: json['Quaida_Words'],
    );
  }
}
