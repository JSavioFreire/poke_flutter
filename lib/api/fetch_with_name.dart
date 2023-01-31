import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class WithNameProvider {
  ValueNotifier data = ValueNotifier([]);
  ValueNotifier loadingData = ValueNotifier(true);
  String url = 'https://pokeapi.co/api/v2/pokemon/';
  callApiPok(name) async {
    var client = http.Client();
    try {
      var response = await client.get(Uri.parse(url+name));
      var res = jsonDecode(response.body);
      data.value = res;
    } finally {
      client.close();
      loadingData.value = false;
    }
  }
}
