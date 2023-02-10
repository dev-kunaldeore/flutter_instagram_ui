import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_app_ui/colors.dart';
import 'package:instagram_app_ui/widgets.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        title: 'Hello',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.nunitoTextTheme(
              Theme.of(context).textTheme,
            )),
        debugShowCheckedModeBanner: false,
        home: DashboardPage(),
      ),
      designSize: const Size(360, 640),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.black), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, color: textColor), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_sharp), label: 'Home')
          ]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.camera_alt_outlined, size: 25.sp),
                    Container(
                      height: 25.h,
                      width: 120.w,
                      child: Image.asset('assets/images/finalinsta.png'),
                    ),
                    Transform.rotate(
                      angle: 320,
                      child: Icon(Icons.send, size: 25.sp),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: 2.sp,
              thickness: 1.sp,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 0.w, vertical: 5.h),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 60.h,
                                  width: 60.w,
                                  margin: EdgeInsets.symmetric(horizontal: 7.w),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 5,
                                    child: Container(
                                      height: 55.h,
                                      width: 55.w,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/user2.jpg'),
                                      ),
                                    ),
                                  ),
                                ),
                                Text('Your story'),
                              ],
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 60.h,
                                  width: 60.w,
                                  child: CircleAvatar(
                                    backgroundColor: storyColor,
                                    radius: 5,
                                    child: Container(
                                      height: 55.h,
                                      width: 55.w,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/user3.jpg'),
                                      ),
                                    ),
                                  ),
                                ),
                                Text('Maina'),
                              ],
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 60.h,
                                  width: 60.w,
                                  child: CircleAvatar(
                                    backgroundColor: storyColor,
                                    radius: 5,
                                    child: Container(
                                      height: 55.h,
                                      width: 55.w,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/user4.webp'),
                                      ),
                                    ),
                                  ),
                                ),
                                Text('Angle'),
                              ],
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 60.h,
                                  width: 60.w,
                                  child: CircleAvatar(
                                    backgroundColor: storyColor,
                                    radius: 5,
                                    child: Container(
                                      height: 55.h,
                                      width: 55.w,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/user3.jpg'),
                                      ),
                                    ),
                                  ),
                                ),
                                Text('Simran'),
                              ],
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 60.h,
                                  width: 60.w,
                                  child: CircleAvatar(
                                    backgroundColor: storyColor,
                                    radius: 5,
                                    child: Container(
                                      height: 55.h,
                                      width: 55.w,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/user6.jpg'),
                                      ),
                                    ),
                                  ),
                                ),
                                Text('Mania'),
                              ],
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 60.h,
                                  width: 60.w,
                                  child: CircleAvatar(
                                    backgroundColor: storyColor,
                                    radius: 5,
                                    child: Container(
                                      height: 55.h,
                                      width: 55.w,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'assets/images/user1.jpg'),
                                      ),
                                    ),
                                  ),
                                ),
                                Text('Sofia'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 2.sp,
                    thickness: 1.sp,
                  ),
                  postWidget(),
                  postWidget(),
                  postWidget(),
                  postWidget(),
                  postWidget(),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
