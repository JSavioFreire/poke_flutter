class PokemonModel {
  String? name;
  String? url;

  PokemonModel({this.name, this.url});

  PokemonModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }
}
