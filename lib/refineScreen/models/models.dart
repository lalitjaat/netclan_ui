
import 'package:flutter/material.dart';
import 'package:netclan_explorer/constants.dart';

List<String> interestList = [
  'Coffee',
  'Business',
  'Hobbies',
  'Friendship',
  'Movies',
  'Dining',
  'Dating',
  'Matrimony'
];

class interestButton extends StatelessWidget {
  final Color customColor;
  final Color defaultColor;
  final bool isCustomColor;
  final VoidCallback onTap;
  final String text;

  interestButton({
    required this.customColor,
    required this.defaultColor,
    required this.isCustomColor,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return 
    InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
            color: isCustomColor ? customColor : defaultColor,
            border: Border.all(
              color: primaryColor,
            ),
            borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(15), right: Radius.circular(15))),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 15, color: isCustomColor ? defaultColor : customColor),
        ),
      ),
    );
  
  }
}
