
import 'package:flutter/material.dart';
import 'package:netclan_explorer/exploreScreen/components/merchantsCard.dart';
import 'package:netclan_explorer/exploreScreen/components/searchBar.dart';

// ignore: camel_case_types
class merchant_Screen extends StatelessWidget {
  const merchant_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        searchBar(),
        Expanded(child: userCardMerchant()),
      ],
    );
    
  }
}

