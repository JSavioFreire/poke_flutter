import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class EvolutionProvider {
  ValueNotifier evolution = ValueNotifier([]);
  ValueNotifier loadingEvolution = ValueNotifier(true);

  callApiPok(url) async {
    var client = http.Client();
    try {
      var response = await client.get(Uri.parse(url));
      var res = jsonDecode(response.body);
      evolution.value = res;
    } finally {
      client.close();
      loadingEvolution.value = false;
    }
  }
}
