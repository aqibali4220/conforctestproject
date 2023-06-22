import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/widgets/custom_textfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> list = ["All", "Design", "Communication", "Development"];
  Color primaryColor = Color(0xff6141BB);
  Color textColor = Color(0xff32235A);
  String fontFamily = "Satochi";
  Color containerColor = Color(0xffF0EBFF);
  Color primaryColorWithOpacity = Color(0xff6141BB).withOpacity(0.16);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: PreferredSize(
        //   preferredSize: Size.fromHeight(188.h),
        //   child: AppBar(
        //     leadingWidth: 36.h,
        //     leading: Container(
        //       height: 36.h,
        //       width: 36.h,
        //       decoration: BoxDecoration(
        //         shape: BoxShape.circle,
        //         color: Colors.green
        //       ),
        //     ),
        //     elevation: 0,
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.vertical(
        //         bottom: Radius.circular(24.w),
        //       ),
        //     ),
        //     title: Text("jk"),
        //   ),
        // ),
        body: Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // height: 220.h,
              padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 24.h),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24.w),
                      bottomRight: Radius.circular(24.w))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 52.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/icons/menu.png",
                        scale: 3,
                      ),
                      Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Container(
                            width: 211.w,
                            height: 36.h,
                            child: CustomTextField(
                              text: 'Search here',
                              length: 40,
                              keyboardType: TextInputType.text,
                              inputFormatters: FilteringTextInputFormatter
                                  .singleLineFormatter,
                              background: Colors.white.withOpacity(0.16),
                              roundCorner: 80,
                              bordercolor: Colors.white,
                            ),
                          ),
                          Container(
                            height: 36.h,
                            width: 36.w,
                            // padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Image.asset(
                              "assets/icons/search.png",
                              scale: 4,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    "Good Morning, Qubo!",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                        color: Colors.white,
                        fontFamily: fontFamily),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "Be educated so that you can change the world.",
                    style: TextStyle(
                        // fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        fontFamily: fontFamily,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              height: 32.h,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () async {},
                    child: Container(
                        // padding: EdgeInsets.symmetric(
                        //     horizontal: 20.h),
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 8.w),
                        decoration: BoxDecoration(
                          color: index == 0 ? primaryColor : containerColor,
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Text(
                            list[index],
                            style: TextStyle(
                                fontFamily: fontFamily,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: index == 0 ? Colors.white : textColor),
                          ),
                        )),
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ON SALE",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 11.sp,
                        fontFamily: fontFamily,
                        color: Colors.black),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                        // fontWeight: FontWeight.w700,
                        fontSize: 11.sp,
                        fontFamily: fontFamily,
                        color: primaryColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              height: 120.h,
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () async {},
                    child: Container(
                        width: 327.w,
                        margin: EdgeInsets.only(left: 16.w),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color(0xffB59FF2).withOpacity(0.5),
                              width: 0.5.w),
                          // color: const Color(0xff6141BB).withOpacity(0.16),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Image.asset(
                              "assets/icons/image.png",
                              fit: BoxFit.cover,
                              scale: 4.h,
                            ),
                            Padding(
                              padding: EdgeInsets.all(16.h),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Spoken English",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14.sp,
                                            color: textColor,
                                            fontFamily: fontFamily),
                                      ),
                                      SizedBox(
                                        width: 12.w,
                                      ),
                                      Text(
                                        "\$49.99",
                                        style: TextStyle(
                                            // fontWeight: FontWeight.w700,
                                            fontSize: 14.sp,
                                            color: Colors.black,
                                            fontFamily: fontFamily),
                                      ),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      Text(
                                        "\$9.99",
                                        style: TextStyle(
                                            // fontWeight: FontWeight.w700,
                                            fontSize: 14.sp,
                                            color: Colors.black,
                                            fontFamily: fontFamily),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Row(
                                    children: [
                                      miniContainer("26 ", "Live classes",
                                          "assets/icons/smile.png"),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      miniContainer("", "Weekly exams",
                                          "assets/icons/exams.png"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 7.h,
                                  ),
                                  Row(
                                    children: [
                                      miniContainer("40 ", "Recorded videos",
                                          "assets/icons/video.png"),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      miniContainer("", "Study notes",
                                          "assets/icons/study.png"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              right: 16.w,
                              bottom: 5.h,
                              child: Container(
                                padding: EdgeInsets.all(8.w),
                                decoration: BoxDecoration(
                                  color: Color(0xff32235A),
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  "assets/icons/play.png",
                                  scale: 3,
                                ),
                              ),
                            )
                          ],
                        )),
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0.w),
              child: Text(
                "Popular Courses",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 11.sp,
                    color: Colors.black,
                    fontFamily: fontFamily),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Expanded(
              child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () async {},
                      child: Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(bottom: 12.w),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xffB59FF2).withOpacity(0.5),
                                width: 0.5.w),
                            // color: const Color(0xff6141BB).withOpacity(0.16),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Image.asset(
                                "assets/icons/image.png",
                                fit: BoxFit.cover,
                                scale: 4.h,
                              ),
                              Padding(
                                padding: EdgeInsets.all(16.h),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Product Design",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14.sp,
                                              color: textColor),
                                        ),
                                        SizedBox(
                                          width: 12.w,
                                        ),
                                        Text(
                                          "\$49.99",
                                          style: TextStyle(
                                              // fontWeight: FontWeight.w700,
                                              fontSize: 14.sp,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    Row(
                                      children: [
                                        miniContainer("26 ", "Live classes",
                                            "assets/icons/smile.png"),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        miniContainer("", "Weekly exams",
                                            "assets/icons/exams.png"),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 7.h,
                                    ),
                                    Row(
                                      children: [
                                        miniContainer("40 ", "Recorded videos",
                                            "assets/icons/video.png"),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        miniContainer("", "Study notes",
                                            "assets/icons/study.png"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                right: 16.w,
                                bottom: 5.h,
                                child: Container(
                                  padding: EdgeInsets.all(8.w),
                                  decoration: BoxDecoration(
                                    color: Color(0xff32235A),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    "assets/icons/play.png",
                                    scale: 3,
                                  ),
                                ),
                              )
                            ],
                          )),
                    );
                  },
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  itemCount: 6),
            ),
          ],
        ),
        Positioned(
          bottom: 24.h,
          left: 16.w,
          right: 16.w,
          child: Container(
            alignment: Alignment.center,
            //width: double.infinity,
            height: 66.h, width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 12.h),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(80),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      "assets/icons/home.png",
                      scale: 3,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          fontFamily: fontFamily,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/icons/saved.png",
                      scale: 3,
                        color: Colors.white.withOpacity(0.5)
                    ),
                    Text(
                      "Saved",
                      style: TextStyle(
                          fontFamily: fontFamily,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white.withOpacity(0.5)),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/icons/course.png",
                      scale: 3,
                        color: Colors.white.withOpacity(0.5)
                    ),
                    Text(
                      "Course",
                      style: TextStyle(
                          fontFamily: fontFamily,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                        color: Colors.white.withOpacity(0.5)),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/icons/library.png",
                      scale: 3,
                        color: Colors.white.withOpacity(0.5)
                    ),
                    Text(
                      "Library",
                      style: TextStyle(
                          fontFamily: fontFamily,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                        color: Colors.white.withOpacity(0.5)),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  miniContainer(String text, String text2, String icon) {
    return Container(
      padding: EdgeInsets.only(left: 6.w, right: 8.w, top: 4.h, bottom: 4.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80),
        color: containerColor,
      ),
      child: Row(
        children: [
          Image.asset(
            icon,
            scale: 4,
          ),
          SizedBox(
            width: 4.w,
          ),
          RichText(
            text: TextSpan(
                text: text,
                children: [
                  TextSpan(
                      text: text2,
                      style: TextStyle(
                          fontSize: 11.sp,
                          color: textColor,
                          fontFamily: fontFamily,
                          ))
                ],
                style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: fontFamily,
                    color: textColor)),
          )
        ],
      ),
    );
  }
}
