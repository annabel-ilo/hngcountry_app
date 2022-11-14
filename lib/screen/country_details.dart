import 'package:flutter/material.dart';

class CountryDetails extends StatefulWidget {
  const CountryDetails({Key? key}) : super(key: key);

  @override
  State<CountryDetails> createState() => _CountryDetailsState();
}

class _CountryDetailsState extends State<CountryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 7, 45),
      appBar: AppBar(
        //backgroundColor: const Color.fromARGB(255, 14, 7, 45),
        title: const Padding(
            padding: EdgeInsets.all(10.0),
            child: const Text(
              "Andorra",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            )),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 22, right: 22),
          child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              decoration: const BoxDecoration(
                //color: Color.fromARGB(255, 67, 63, 83),
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Image goes here',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  MoreCountryDetails(title: 'Population:', output: '77,354'),
                  MoreCountryDetails(title: 'Region:', output: 'Europe'),
                  MoreCountryDetails(
                      title: 'Capital:', output: 'Andora la vella'),
                  MoreCountryDetails(
                      title: 'Motto:', output: 'Virtus unita fortior'),
                  MoreCountryDetails(
                      title: 'Religion:', output: 'Christianity'),
                  MoreCountryDetails(title: 'Currency:', output: 'Euro'),
                  MoreCountryDetails(title: 'GDP', output: 'US\$3.400 billion'),
                ],
              )),
        ),
      ),
    );
  }
}

class MoreCountryDetails extends StatelessWidget {
  const MoreCountryDetails({
    Key? key,
    required this.title,
    this.output,
  }) : super(key: key);
  final String title;
  final dynamic output;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RichText(
        text: TextSpan(
            text: title,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
            children: <TextSpan>[
             
              TextSpan(
                text: output,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
            ]),
      ),
    );
  }
}
