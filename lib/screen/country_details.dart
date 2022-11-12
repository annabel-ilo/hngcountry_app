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
      // appBar: AppBar(
      //   backgroundColor: const Color.fromARGB(255, 14, 7, 45),
      //   title: Padding(
      //     padding: const EdgeInsets.all(10.0),
      //     child: RichText(
      //       text: const TextSpan(
      //           text: 'Explore',
      //           style: TextStyle(
      //               fontSize: 30,
      //               fontWeight: FontWeight.w500,
      //               color: Colors.white),
      //           children: <TextSpan>[
      //             TextSpan(
      //               text: '.',
      //               style: TextStyle(
      //                 fontSize: 40,
      //                 fontWeight: FontWeight.w800,
      //                 color: Colors.orange,
      //               ),
      //             ),
      //           ]),
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 22, right: 22),
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 67, 63, 83),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: Text('yiyiyiiy')),
            ],
          ),
        ),
      ),
    );
  }
}
