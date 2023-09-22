import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mi.dart';
import 'package:netclan_explorer/constants.dart';

class searchBar extends StatelessWidget {
  const searchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 35, top: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: 310,
            height: 30,
            child: TextField(
              expands: true,
              maxLines: null,
              minLines: null,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  color: secondaryColorFade_1,
                  size: 18,
                ),
                hintText: "Search",
                hintStyle: TextStyle(color: secondaryColorFade_1),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: secondaryColorFade_1), //<-- SEE HERE
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
          ),
          Iconify(
            Mi.filter,
            color: secondaryColorFade_1,
            size: 30,
          )
        ],
      ),
    );
  }
}

