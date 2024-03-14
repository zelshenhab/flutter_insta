import 'package:flutter/material.dart';
import 'package:flutter_insta/shared/colors.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      appBar: AppBar(
          backgroundColor: mobileBackgroundColor,
          title: TextFormField(
            decoration:
                const InputDecoration(labelText: 'Search for a user...'),
          )),
    );
  }
}
