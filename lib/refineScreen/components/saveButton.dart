import 'package:flutter/material.dart';
import 'package:netclan_explorer/constants.dart';
import 'package:netclan_explorer/refineScreen/models/models.dart';

class saveButton extends StatelessWidget {
  const saveButton({
    super.key,
    required this.buttonStates,
  });

  final List<bool> buttonStates;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top:30),
        child: interestButton(
            customColor: Colors.white,
            defaultColor: primaryColor,
            isCustomColor: buttonStates[0],
            onTap: () {},
            text: "Save and Explore"),
      ),
    );
  }
}
