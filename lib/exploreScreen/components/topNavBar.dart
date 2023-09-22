import 'package:flutter/material.dart';
import 'package:netclan_explorer/exploreScreen/view/individual_Screen.dart';
import 'package:netclan_explorer/exploreScreen/view/merchant_Screen.dart';
import 'package:netclan_explorer/exploreScreen/view/professional_Screen.dart';

class topNavBar extends StatelessWidget {
  const topNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TabBarView(children: [
      individual_Screen(),
      professional_Screen(),
      merchant_Screen()
    ]
    );
  }
}