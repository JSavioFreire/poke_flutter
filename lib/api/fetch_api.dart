import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:poke_flutter/model/pok_api_model.dart';

class InitialApiProvider {
  ValueNotifier each = ValueNotifier([]);
  ValueNotifier loading = ValueNotifier(true);

  String url = 'https://pokeapi.co/api/v2/pokemon?limit=30&offset=0';

  callApi() async {
    var client = http.Client();
    try {
      var response = await client.get(Uri.parse(url));
      var res = jsonDecode(response.body);
      var resData = res['results'];
      each.value = resData.map((e) => PokemonModel.fromJson(e)).toList();
    } finally {
      client.close();
      loading.value = false;
    }
  }
}
