
import 'package:flutter/material.dart';
import 'package:netclan_explorer/exploreScreen/components/professionalsCard.dart';
import 'package:netclan_explorer/exploreScreen/components/searchBar.dart';

class professional_Screen extends StatelessWidget {
  const professional_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [searchBar(),
        userCardProfessional(
        ),
      ],
    );
  }
}

