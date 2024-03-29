import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class EachProvider {
  ValueNotifier eachComplete = ValueNotifier([]);
  ValueNotifier loadingComplete = ValueNotifier(true);

  callApiPok(url) async {
    var client = http.Client();
    try {
      var response = await client.get(Uri.parse(url));
      var res = jsonDecode(response.body);
      eachComplete.value = res;
    } finally {
      client.close();
      loadingComplete.value = false;
    }
  }
}
