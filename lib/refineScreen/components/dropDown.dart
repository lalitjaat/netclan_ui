import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netclan_explorer/constants.dart';

var items = [
  'Available | Hey Let\'s Connect',
  'Away | Stay Discrete And Watch',
  'Busy | Do Not Disturb | Will catch Up Later',
  'SOS | Emergency! Need Assistance! HELP',
];
String dropdownvalue = 'Available | Hey Let\'s Connect';

class dropDown extends StatefulWidget {
  const dropDown({super.key});

  @override
  State<dropDown> createState() => _dropDownState();
}

class _dropDownState extends State<dropDown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(left: 8,right: 3),
          decoration: BoxDecoration(
            
            border: Border.all(color: Colors.black,width: 0.5 ),
            borderRadius: BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10))
          ),
          child: DropdownButton(
            itemHeight: kMinInteractiveDimension,
            underline: Container(color: Colors.amber,),
            focusNode: FocusNode(),
            style: TextStyle(color: primaryColor, fontSize: 15),
            dropdownColor: Color.fromARGB(255, 255, 255, 255),
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            value: dropdownvalue,
            elevation: 8,
            icon: const Icon(Icons.keyboard_arrow_down),
        
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
            },
          ),
        ),
      ],
    );
  }
}
