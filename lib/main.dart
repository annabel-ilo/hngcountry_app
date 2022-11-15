import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'const/model/provider/country_provider.dart';
import 'screen/all_contries.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => CountryProvider(),
        ),],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          //primarySwatch: Colors.white10,
        ),
        home: const AllCountries(),
      ),
    );
  }
}
