import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../get_all_countries.dart';

class CountryProvider with ChangeNotifier {
  List<GetAllCountries> _getAllCountries = [];
  List<GetAllCountries> get getAllCountries => _getAllCountries;

  Future<void> getCountriesItems() async {
    const url = 'https://restcountries.com/v3.1/all';
    try {
      final response = await http.get(Uri.parse(url));
      print(response.body.toString());
      if (response.statusCode == 200) {
        List <GetAllCountries> _getAllCountries =
            getAllCountriesFromJson(jsonEncode(response.body));
        //final _getAllCountries = json.

      }

      notifyListeners();
    } catch (error) {
      rethrow;
    }
  }
}
