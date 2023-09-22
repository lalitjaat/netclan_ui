
import 'package:flutter/material.dart';
import 'package:netclan_explorer/exploreScreen/components/individualcard.dart';
import 'package:netclan_explorer/exploreScreen/components/searchBar.dart';

class individual_Screen extends StatelessWidget {
  const individual_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [searchBar(), userCard()],
    );
  }
}

