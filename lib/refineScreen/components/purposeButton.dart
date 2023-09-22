import 'package:flutter/material.dart';
import 'package:netclan_explorer/constants.dart';
import 'package:netclan_explorer/refineScreen/models/models.dart';

class purposeButton extends StatefulWidget {
  const purposeButton({super.key});

  @override
  State<purposeButton> createState() => _purposeButtonState();
}

class _purposeButtonState extends State<purposeButton> {
  List<bool> buttonStates = List.generate(20, (index) => false);

  void toggleColor(int index) {
    setState(() {
      buttonStates[index] = !buttonStates[index];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Wrap(
              children: List.generate(interestList.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: interestButton(
                    customColor: primaryColor,
                    defaultColor: Colors.white,
                    isCustomColor: buttonStates[index],
                    onTap: () => toggleColor(index),
                    text: interestList[index],
                  ),
                );
              }),
            )
            
            ;
  }
}
