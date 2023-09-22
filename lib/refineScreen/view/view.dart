import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netclan_explorer/constants.dart';
import 'package:netclan_explorer/refineScreen/components/distanceSlider.dart';
import 'package:netclan_explorer/refineScreen/components/dropDown.dart';
import 'package:netclan_explorer/refineScreen/components/purposeButton.dart';
import 'package:netclan_explorer/refineScreen/components/saveButton.dart';
import 'package:netclan_explorer/refineScreen/components/statusField.dart';

class refineScreen extends StatefulWidget {
  const refineScreen({super.key});

  @override
  State<refineScreen> createState() => _refineScreenState();
}

class _refineScreenState extends State<refineScreen> {
  final TextEditingController textEditingController = TextEditingController(
      text: 'Hi Community! I am open to new connections.');
  List<bool> buttonStates = List.generate(20, (index) => false);

  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.chevron_left,size: 30, color: Colors.white,)),
          title: const Text(
            "Refine",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: tabColor,
        ),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 130),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    "Select your Availability",
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const dropDown(),
                Text(
                  "Add Your Status",
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                statusField(textEditingController: textEditingController),
                Text(
                  "Select hyper local distance",
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                const distanceSlider(),
                Text(
                  "Select Purpose",
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w500),
                ),
                const purposeButton(),
                saveButton(buttonStates: buttonStates)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
