class HeroiItemModel {

  String id = "";
  String nome = "";
  String Imagem = "";

  HeroiItemModel({ required this.id, required this.nome, required this.Imagem});

  factory HeroiItemModel.fromJson(Map<String, dynamic> json) {
    return HeroiItemModel(
      id: json["id"] as String, 
      nome: json["nome"] as String, 
      Imagem: json["imagem"] as String,
      );
  }
}