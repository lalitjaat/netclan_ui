
import 'package:flutter/material.dart';
import 'package:netclan_explorer/constants.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class distanceSlider extends StatefulWidget {
  const distanceSlider({super.key});

  @override
  State<distanceSlider> createState() => _distanceSliderState();
}

class _distanceSliderState extends State<distanceSlider> {
    int sliderValue = 7;

  @override
  Widget build(BuildContext context) {
    return  SfSlider(
              activeColor: primaryColor,
              inactiveColor: Colors.grey,
              min: 1,
              max: 100,
              overlayShape: const SfOverlayShape(),
              edgeLabelPlacement: EdgeLabelPlacement.inside,
              showLabels: true,
              labelFormatterCallback: (actualValue, formattedText) {
                return formattedText = '$actualValue Km';
              },
              enableTooltip: true,
              onChanged: (dynamic newValue) {
                setState(() {
                  sliderValue = newValue.round();
                });
              },
              value: sliderValue,
            )
            ;
  }
}


