import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/screen/restaurent/menu_bottomsheet.dart';
import 'package:food_delivery_app/src/screen/restaurent/menu_show.dart';

class RestaurentMenu extends StatefulWidget {
  RestaurentMenu({Key key}) : super(key: key);

  @override
  _RestaurentMenuState createState() => _RestaurentMenuState();
}

class _RestaurentMenuState extends State<RestaurentMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Text(
                            "Popular",
                            style: TextStyle(
                              color: Color(
                                0xff646464,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                          width: 335,
                          height: 16,
                        ),
                        SizedBox(
                          child: Text(
                            "4 items",
                            style: TextStyle(
                              color: Color(
                                0xff646464,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Poppins",
                            ),
                          ),
                          width: 335,
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //-------------
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          builder: (context) {
                            return Container(child: MenuBottomSheet());
                          });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              child: Text(
                                                "Reginal lunch",
                                                style: TextStyle(
                                                  color: Color(
                                                    0xff202020,
                                                  ),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: "Poppins",
                                                ),
                                              ),
                                              width: 255,
                                              height: 23,
                                            ),
                                            SizedBox(
                                              child: Text(
                                                "Rice, dall",
                                                style: TextStyle(
                                                  color: Color(
                                                    0xff202020,
                                                  ),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  fontFamily: "Poppins",
                                                ),
                                              ),
                                              width: 255,
                                              height: 19,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      SizedBox(
                                        child: Text(
                                          "120 tk",
                                          style: TextStyle(
                                            color: Color(
                                              0xffff4200,
                                            ),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        width: 255,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                          color: Color(
                                            0xffc4c4c4,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                        ),
                                      ),

                                      /// wrap:positioned of "image 139"
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                            width: 96,
                                            height: 144,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                  "https://resource-hosting.s3.us-west-1.amazonaws.com/GiyjHFL8-[object Object]",
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                      Container(),
                                    ],
                                  ),
                                  width: 80,
                                  height: 80,
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                            ),
                          ),
                          //container
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 335,
                            height: 0.5,
                            decoration: BoxDecoration(
                              color: Color(
                                0xffc4c4c4,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              child: Text(
                                                "Panta ilish",
                                                style: TextStyle(
                                                  color: Color(
                                                    0xff202020,
                                                  ),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: "Poppins",
                                                ),
                                              ),
                                              width: 255,
                                              height: 23,
                                            ),
                                            SizedBox(
                                              child: Text(
                                                "Rice, fish 2",
                                                style: TextStyle(
                                                  color: Color(
                                                    0xff202020,
                                                  ),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  fontFamily: "Poppins",
                                                ),
                                              ),
                                              width: 255,
                                              height: 19,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      SizedBox(
                                        child: Text(
                                          "250 tk",
                                          style: TextStyle(
                                            color: Color(
                                              0xffff4200,
                                            ),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        width: 255,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                          color: Color(
                                            0xffc4c4c4,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                        ),
                                      ),

                                      /// wrap:positioned of "image 140"
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                            width: 138,
                                            height: 84,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                  "https://resource-hosting.s3.us-west-1.amazonaws.com/qpg7TGKn-[object Object]",
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                      Container(),
                                    ],
                                  ),
                                  width: 80,
                                  height: 80,
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 335,
                            height: 0.5,
                            decoration: BoxDecoration(
                              color: Color(
                                0xffc4c4c4,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              child: Text(
                                                "Fride rice",
                                                style: TextStyle(
                                                  color: Color(
                                                    0xff202020,
                                                  ),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: "Poppins",
                                                ),
                                              ),
                                              width: 255,
                                              height: 23,
                                            ),
                                            SizedBox(
                                              child: Text(
                                                "Rice",
                                                style: TextStyle(
                                                  color: Color(
                                                    0xff202020,
                                                  ),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  fontFamily: "Poppins",
                                                ),
                                              ),
                                              width: 255,
                                              height: 19,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      SizedBox(
                                        child: Text(
                                          "50 tk",
                                          style: TextStyle(
                                            color: Color(
                                              0xffff4200,
                                            ),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        width: 255,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                          color: Color(
                                            0xffc4c4c4,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                        ),
                                      ),

                                      /// wrap:positioned of "image 137"
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            width: 127,
                                            height: 84,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                  "https://resource-hosting.s3.us-west-1.amazonaws.com/_-gg-5-Z-[object Object]",
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                      Container(),
                                    ],
                                  ),
                                  width: 80,
                                  height: 80,
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 335,
                            height: 0.5,
                            decoration: BoxDecoration(
                              color: Color(
                                0xffc4c4c4,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              child: Text(
                                                "Tehari",
                                                style: TextStyle(
                                                  color: Color(
                                                    0xff202020,
                                                  ),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: "Poppins",
                                                ),
                                              ),
                                              width: 255,
                                              height: 23,
                                            ),
                                            SizedBox(
                                              child: Text(
                                                "Rice",
                                                style: TextStyle(
                                                  color: Color(
                                                    0xff202020,
                                                  ),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300,
                                                  fontFamily: "Poppins",
                                                ),
                                              ),
                                              width: 255,
                                              height: 19,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      SizedBox(
                                        child: Text(
                                          "99 tk",
                                          style: TextStyle(
                                            color: Color(
                                              0xffff4200,
                                            ),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        width: 255,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                          color: Color(
                                            0xffc4c4c4,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                        ),
                                      ),

                                      /// wrap:positioned of "image 138"
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            width: 110,
                                            height: 96,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                  "https://resource-hosting.s3.us-west-1.amazonaws.com/bQeOoe1n-[object Object]",
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),

                                      /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                      Container(),
                                    ],
                                  ),
                                  width: 80,
                                  height: 80,
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 335,
                            height: 0.5,
                            decoration: BoxDecoration(
                              color: Color(
                                0xffc4c4c4,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                child: Text(
                                  "Cake",
                                  style: TextStyle(
                                    color: Color(
                                      0xff646464,
                                    ),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                width: 335,
                                height: 16,
                              ),
                              SizedBox(
                                child: Text(
                                  "3 items",
                                  style: TextStyle(
                                    color: Color(
                                      0xff646464,
                                    ),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                width: 335,
                                height: 16,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  child: Text(
                                                    "Momo",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff202020,
                                                      ),
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  width: 255,
                                                  height: 23,
                                                ),
                                                SizedBox(
                                                  child: Text(
                                                    "4 pices",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff202020,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  width: 255,
                                                  height: 19,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            child: Text(
                                              "120 tk",
                                              style: TextStyle(
                                                color: Color(
                                                  0xffff4200,
                                                ),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                            width: 255,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: 80,
                                            height: 80,
                                            decoration: BoxDecoration(
                                              color: Color(
                                                0xffc4c4c4,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                5,
                                              ),
                                            ),
                                          ),

                                          /// wrap:positioned of "image 133"
                                          Positioned.fill(
                                            child: Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                width: 144,
                                                height: 96,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/-o804PXU-[object Object]",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),

                                          /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                          Container(),
                                        ],
                                      ),
                                      width: 80,
                                      height: 80,
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 335,
                                height: 0.5,
                                decoration: BoxDecoration(
                                  color: Color(
                                    0xffc4c4c4,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  child: Text(
                                                    "Cake",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff202020,
                                                      ),
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  width: 255,
                                                  height: 23,
                                                ),
                                                SizedBox(
                                                  child: Text(
                                                    "Cake",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff202020,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  width: 255,
                                                  height: 19,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            child: Text(
                                              "120 tk",
                                              style: TextStyle(
                                                color: Color(
                                                  0xffff4200,
                                                ),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                            width: 255,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: 80,
                                            height: 80,
                                            decoration: BoxDecoration(
                                              color: Color(
                                                0xffc4c4c4,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                5,
                                              ),
                                            ),
                                          ),

                                          /// wrap:positioned of "image 132"
                                          Positioned.fill(
                                            child: Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                width: 90,
                                                height: 114,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/WxICnrk3-[object Object]",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),

                                          /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                          Container(),
                                        ],
                                      ),
                                      width: 80,
                                      height: 80,
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 335,
                                height: 0.5,
                                decoration: BoxDecoration(
                                  color: Color(
                                    0xffc4c4c4,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  child: Text(
                                                    "Momo 2",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff202020,
                                                      ),
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  width: 255,
                                                  height: 23,
                                                ),
                                                SizedBox(
                                                  child: Text(
                                                    "4 pices",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff202020,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  width: 255,
                                                  height: 19,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            child: Text(
                                              "120 tk",
                                              style: TextStyle(
                                                color: Color(
                                                  0xffff4200,
                                                ),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                            width: 255,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: 80,
                                            height: 80,
                                            decoration: BoxDecoration(
                                              color: Color(
                                                0xffc4c4c4,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                5,
                                              ),
                                            ),
                                          ),

                                          /// wrap:positioned of "image 131"
                                          Positioned.fill(
                                            child: Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                width: 144,
                                                height: 97,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/WNoeAkeH-[object Object]",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),

                                          /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                          Container(),
                                        ],
                                      ),
                                      width: 80,
                                      height: 80,
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 335,
                                height: 0.5,
                                decoration: BoxDecoration(
                                  color: Color(
                                    0xffc4c4c4,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                child: Text(
                                  "Burger",
                                  style: TextStyle(
                                    color: Color(
                                      0xff646464,
                                    ),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                width: 335,
                                height: 16,
                              ),
                              SizedBox(
                                child: Text(
                                  "3 items",
                                  style: TextStyle(
                                    color: Color(
                                      0xff646464,
                                    ),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                width: 335,
                                height: 16,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  child: Text(
                                                    "Barger with frinch fry",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff202020,
                                                      ),
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  width: 255,
                                                ),
                                                SizedBox(
                                                  child: Text(
                                                    "1 burger, french fry",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff202020,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  width: 255,
                                                  height: 19,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            child: Text(
                                              "200 tk",
                                              style: TextStyle(
                                                color: Color(
                                                  0xffff4200,
                                                ),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                            width: 255,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: 80,
                                            height: 80,
                                            decoration: BoxDecoration(
                                              color: Color(
                                                0xffc4c4c4,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                5,
                                              ),
                                            ),
                                          ),

                                          /// wrap:positioned of "image 134"
                                          Positioned.fill(
                                            child: Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                width: 144,
                                                height: 96,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/EuA2o3fi-[object Object]",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),

                                          /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                          Container(),
                                        ],
                                      ),
                                      width: 80,
                                      height: 80,
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 335,
                                height: 0.5,
                                decoration: BoxDecoration(
                                  color: Color(
                                    0xffc4c4c4,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  child: Text(
                                                    "Burger",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff202020,
                                                      ),
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  width: 255,
                                                  height: 23,
                                                ),
                                                SizedBox(
                                                  child: Text(
                                                    "Burger",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff202020,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  width: 255,
                                                  height: 19,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            child: Text(
                                              "250 tk",
                                              style: TextStyle(
                                                color: Color(
                                                  0xffff4200,
                                                ),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                            width: 255,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: 80,
                                            height: 80,
                                            decoration: BoxDecoration(
                                              color: Color(
                                                0xffc4c4c4,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                5,
                                              ),
                                            ),
                                          ),

                                          /// wrap:positioned of "image 136"
                                          Positioned.fill(
                                            child: Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                width: 119,
                                                height: 84,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/mtcz4JwJ-[object Object]",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),

                                          /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                          Container(),
                                        ],
                                      ),
                                      width: 80,
                                      height: 80,
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 335,
                                height: 0.5,
                                decoration: BoxDecoration(
                                  color: Color(
                                    0xffc4c4c4,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  child: Text(
                                                    "Burger king",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff202020,
                                                      ),
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  width: 255,
                                                  height: 23,
                                                ),
                                                SizedBox(
                                                  child: Text(
                                                    "Burger",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xff202020,
                                                      ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily: "Poppins",
                                                    ),
                                                  ),
                                                  width: 255,
                                                  height: 19,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            child: Text(
                                              "130 tk",
                                              style: TextStyle(
                                                color: Color(
                                                  0xffff4200,
                                                ),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                            width: 255,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: 80,
                                            height: 80,
                                            decoration: BoxDecoration(
                                              color: Color(
                                                0xffc4c4c4,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                5,
                                              ),
                                            ),
                                          ),

                                          /// wrap:positioned of "image 135"
                                          Positioned.fill(
                                            child: Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                width: 100,
                                                height: 150,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/UheewA21-[object Object]",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),

                                          /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                          Container(),
                                        ],
                                      ),
                                      width: 80,
                                      height: 80,
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 335,
                                height: 0.5,
                                decoration: BoxDecoration(
                                  color: Color(
                                    0xffc4c4c4,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(
          top: 20,
          bottom: 200,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
      ),
    ));
  }
}
