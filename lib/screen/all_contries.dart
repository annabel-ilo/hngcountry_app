import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../const/model/provider/country_provider.dart';
import 'country_details.dart';

class AllCountries extends StatefulWidget {
  const AllCountries({Key? key}) : super(key: key);

  @override
  State<AllCountries> createState() => _AllCountriesState();
}

class _AllCountriesState extends State<AllCountries> {
  @override
  void initState() {
    super.initState();
    Provider.of<CountryProvider>(context, listen: false).getCountriesItems();
  }

  @override
  Widget build(BuildContext context) {
    final countriesDits = Provider.of<CountryProvider>(context);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 7, 45),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 14, 7, 45),
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: RichText(
            text: const TextSpan(
                text: 'Explore',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
                children: <TextSpan>[
                  TextSpan(
                    text: '.',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                      color: Colors.orange,
                    ),
                  ),
                ]),
          ),
        ),
      ),
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
                child: TextField(
                  onChanged: (value) {
                    // print(value);
                    // //model.searchExploreCauses(value);
                    // if (value.isEmpty) {
                    //   setState(() {
                    //     _isSearching = false;
                    //   });
                    // } else {
                    //   setState(() {
                    //     _isSearching = true;
                    //   });
                    //   Provider.of<CauseProvider>(context, listen: false)
                    //       .searchExploreCauses(value);
                    // }
                  },
                  //controller: searchController,
                  textDirection: TextDirection.ltr,
                  decoration: const InputDecoration(
                    hintText: "Search Country",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Filter(
                    icon: Icons.wallet_membership_rounded,
                    text: 'EN',
                  ),
                  Filter(
                    icon: Icons.wallet_membership_rounded,
                    text: 'Filter',
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.5,
                child: Consumer<CountryProvider>(
                    builder: (BuildContext context, value, _) {
                  return ListView.builder(
                      itemCount: value.getAllCountries.length,
                      itemBuilder: (context, index) {
                        final item = value.getAllCountries[index];
                        return TextButton(
                          onPressed: () => Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const CountryDetails()),
                          ),
                          child: ListTile(
                            leading: Icon(Icons.ac_unit_outlined,
                                color: Colors.white),
                            title: Text(
                              value.getAllCountries[index].cca2,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              item.capital!.first,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        );
                      });
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Filter extends StatelessWidget {
  const Filter({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      //width: 50,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        border: Border.all(
          color: Colors.white,
          //width: 1,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          //SizedBox(width: 5),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
