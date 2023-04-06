import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Map<dynamic, dynamic>> getCurrentWeather(String city) async {
  print(city);
  String api = 'e06e4cbe19b345eebce23443230604';
  String url =
      'http://api.weatherapi.com/v1/current.json?key=$api&q=$city&aqi=no';
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    final json = jsonDecode(response.body);
    return json;
  } else {
    throw Exception('Failed to load weather data');
  }
}
