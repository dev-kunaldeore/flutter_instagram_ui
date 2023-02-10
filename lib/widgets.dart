import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_app_ui/colors.dart';

Widget postWidget() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 40.h,
                  width: 40.w,
                  child: CircleAvatar(
                    backgroundColor: textColor,
                    radius: 2,
                    child: Container(
                      height: 38.h,
                      width: 38.w,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/user4.webp'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Marina',
                              style: TextStyle(
                                  color: textColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text('Los Angles'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 10.w,
            ),
            Icon(Icons.more_horiz),
          ],
        ),
      ),
      Image.asset('assets/images/post.png'),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.redAccent,
                  size: 25.sp,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.comment_rounded,
                  size: 25.sp,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.send,
                  size: 25.sp,
                ),
              ],
            ),
            Icon(
              Icons.save_as_sharp,
              size: 25.sp,
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '496 likes',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Wrap(
              children: [
                Text(
                  'marina',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  'Boked water is amzing',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Text(
              '9 MIN AGO',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    ],
  );
}
