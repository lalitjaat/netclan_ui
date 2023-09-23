import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mi.dart';
import 'package:netclan_explorer/constants.dart';

class searchBar extends StatelessWidget {
  const  searchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 20.w, right: 35.w, top: 20.h, bottom: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: 310.w,
            height: 30.h,
            child: TextField(
              keyboardType: TextInputType.name,
              expands: true,
              maxLines: null,
              minLines: null,
              decoration: InputDecoration(
                focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: primaryColor),
                borderRadius: BorderRadius.horizontal(left: Radius.circular(50), right: Radius.circular(50))),
                prefixIcon: Icon(
                  CupertinoIcons.search,
                  color: secondaryColorFade_1,
                  size: 18.r,
                ),
                hintText: "Search",
                hintStyle: TextStyle(color: secondaryColorFade_1),
                contentPadding:
                     EdgeInsets.symmetric(vertical: 0.h, horizontal: 20.w),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1.w, color: secondaryColorFade_1), //<-- SEE HERE
                  borderRadius: BorderRadius.circular(50.0.r),
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

