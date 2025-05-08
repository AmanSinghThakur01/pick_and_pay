import 'package:http/http.dart' as http;
import 'dart:convert';

Future<dynamic> fetchProducts() async {
   var res = await http.get(Uri.parse("https://dummyjson.com/products"));
  //var res = await http.get(Uri.parse("https://api.escuelajs.co/api/v1/products"));
  if (res.statusCode == 200) {
    var data = jsonDecode(res.body);

    return data['products'];
  } else {
    print("Failed to fetch data: ${res.statusCode}");
    return null;
  }
}   
     