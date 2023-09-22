
import 'package:flutter/material.dart';
import 'package:netclan_explorer/constants.dart';

class statusField extends StatelessWidget {
  const statusField({
    super.key,
    required this.textEditingController,
  });

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: TextField(
        maxLines: null,
        minLines: null,
        
        strutStyle: const StrutStyle(
          
          
        ),
        cursorColor: primaryColor,
        showCursor: true,
        maxLength: 250,
        controller: textEditingController,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor)),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(10), right: Radius.circular(10))),
            prefixStyle: const TextStyle(color: Colors.black)),
      ),
    );
  }
}
