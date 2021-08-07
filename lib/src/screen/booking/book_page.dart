import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  BookingPage({Key key}) : super(key: key);

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          
          child: Container(
            
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
                        child: Text(
                          "Resturant profile",
                          style: TextStyle(
                            color: Color(
                              0xffff4200,
                            ),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                          ),
                          textAlign: TextAlign.center,
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
                                  /// Detected as Icon
                                  /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                  Image.network(
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/9ta3CFwa-[object Object]",
                                    width: 24,
                                    height: 24,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  SizedBox(
                                    child: Text(
                                      "Pizza burg, Mirpur 2",
                                      style: TextStyle(
                                        color: Color(
                                          0xff929292,
                                        ),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    width: 273,
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                              ),
                              width: 334,
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 13,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  30,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 335,
                                          height: 190,
                                          decoration: BoxDecoration(
                                            color: Color(
                                              0xffc4c4c4,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              5,
                                            ),
                                          ),
                                        ),

                                        /// wrap:positioned of "image 125"
                                        Positioned.fill(
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              width: 343.24,
                                              height: 228,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/On7QVgiM-[object Object]",
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
                                    width: 335,
                                    height: 190,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                child: Text(
                                                  "Pizza Burg",
                                                  style: TextStyle(
                                                    color: Color(
                                                      0xff202020,
                                                    ),
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: "Poppins",
                                                  ),
                                                ),
                                                width: 278,
                                              ),
                                              Container(
                                                child: Row(
                                                  children: [
                                                    /// Detected as Icon
                                                    /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                                    Image.network(
                                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/ajPR8V6B-[object Object]",
                                                      width: 13,
                                                      height: 13,
                                                      fit: BoxFit.cover,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      "3.5",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xff202020,
                                                        ),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        fontFamily: "Poppins",
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      "(2)",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xff646464,
                                                        ),
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        fontFamily: "Poppins",
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ],
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                ),
                                              ),
                                            ],
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "Pizza & Burgers",
                                            style: TextStyle(
                                              color: Color(
                                                0xff202020,
                                              ),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                              fontFamily: "Poppins",
                                            ),
                                            textAlign: TextAlign.center,
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
                  child: Container(
                    child: Text(
                      "Date schedule",
                      style: TextStyle(
                        color: Color(
                          0xffff4200,
                        ),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                      textAlign: TextAlign.center,
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                  ),
                  padding: EdgeInsets.only(
                    bottom: 10,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //
                Container(
                  width: 335,
                  height: 229,
                  
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Time schedule",
                          style: TextStyle(
                            color: Color(
                              0xffff4200,
                            ),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                          ),
                          textAlign: TextAlign.center,
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
                                  Text(
                                    "Event",
                                    style: TextStyle(
                                      color: Color(
                                        0xff929292,
                                      ),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: SizedBox(
                                            child: Text(
                                              "Morning",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Poppins",
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            width: 105,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            vertical: 5,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Color(
                                              0xffff4200,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          child: SizedBox(
                                            child: Text(
                                              "Noon",
                                              style: TextStyle(
                                                color: Color(
                                                  0xffff4200,
                                                ),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Poppins",
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            width: 105,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            vertical: 5,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          child: SizedBox(
                                            child: Text(
                                              "Evening",
                                              style: TextStyle(
                                                color: Color(
                                                  0xffff4200,
                                                ),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: "Poppins",
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            width: 105,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            vertical: 5,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                          ),
                                        ),
                                      ],
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
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
                                  Text(
                                    "Time",
                                    style: TextStyle(
                                      color: Color(
                                        0xff929292,
                                      ),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Poppins",
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                child: SizedBox(
                                                  child: Text(
                                                    "10:00 am",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Poppins",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  width: 105,
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                  vertical: 5,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Color(
                                                    0xffff4200,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    20,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                child: SizedBox(
                                                  child: Text(
                                                    "10:30 am",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xffff4200,
                                                      ),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Poppins",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  width: 105,
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                  vertical: 5,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    20,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                child: SizedBox(
                                                  child: Text(
                                                    "11:00 am",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xffff4200,
                                                      ),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Poppins",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  width: 105,
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                  vertical: 5,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    20,
                                                  ),
                                                ),
                                              ),
                                            ],
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                child: SizedBox(
                                                  child: Text(
                                                    "11:30 am",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xffff4200,
                                                      ),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Poppins",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  width: 105,
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                  vertical: 5,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    20,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                child: SizedBox(
                                                  child: Text(
                                                    "12:00 am",
                                                    style: TextStyle(
                                                      color: Color(
                                                        0xffff4200,
                                                      ),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Poppins",
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  width: 105,
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                  vertical: 5,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    20,
                                                  ),
                                                ),
                                              ),
                                            ],
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
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
                  padding: EdgeInsets.only(
                    bottom: 10,
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Table preference",
                          style: TextStyle(
                            color: Color(
                              0xffff4200,
                            ),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                          ),
                          textAlign: TextAlign.center,
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    child: Text(
                                      "No of table:",
                                      style: TextStyle(
                                        color: Color(
                                          0xff929292,
                                        ),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Poppins",
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    width: 69,
                                    height: 23,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Container(
                                    child: Text(
                                      "2",
                                      style: TextStyle(
                                        color: Color(
                                          0xffff4200,
                                        ),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Poppins",
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                              ),
                              padding: EdgeInsets.only(
                                bottom: 10,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    child: Text(
                                      "Table no:",
                                      style: TextStyle(
                                        color: Color(
                                          0xff929292,
                                        ),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Poppins",
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    width: 59,
                                    height: 23,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Container(
                                    child: Text(
                                      "2, 3",
                                      style: TextStyle(
                                        color: Color(
                                          0xffff4200,
                                        ),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Poppins",
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                              ),
                              padding: EdgeInsets.only(
                                bottom: 10,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    child: Text(
                                      "Capacity:",
                                      style: TextStyle(
                                        color: Color(
                                          0xff929292,
                                        ),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Poppins",
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    width: 59,
                                    height: 23,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Container(
                                    child: Text(
                                      "8",
                                      style: TextStyle(
                                        color: Color(
                                          0xffff4200,
                                        ),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Poppins",
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                              ),
                              padding: EdgeInsets.only(
                                bottom: 10,
                              ),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
                                    child:

                                        /// Detected as Icon
                                        /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                        Image.network(
                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/2htZwg_I-[object Object]",
                                      width: 24,
                                      height: 24,
                                      fit: BoxFit.cover,
                                    ),
                                    padding: EdgeInsets.all(
                                      10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        40,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(
                                            0x26000000,
                                          ),
                                          blurRadius: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 81,
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 16,
                                          height: 10,
                                          decoration: BoxDecoration(
                                            color: Color(
                                              0xffff4200,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                4,
                                              ),
                                              topRight: Radius.circular(
                                                4,
                                              ),
                                              bottomLeft: Radius.circular(
                                                20,
                                              ),
                                              bottomRight: Radius.circular(
                                                20,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Container(
                                          width: 40,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            color: Color(
                                              0xfff8f8f8,
                                            ),
                                            border: Border.all(
                                              color: Color(
                                                0xffff4200,
                                              ),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              30,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Container(
                                          width: 16,
                                          height: 10,
                                          decoration: BoxDecoration(
                                            color: Color(
                                              0xffff4200,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                4,
                                              ),
                                              topRight: Radius.circular(
                                                4,
                                              ),
                                              bottomLeft: Radius.circular(
                                                20,
                                              ),
                                              bottomRight: Radius.circular(
                                                20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 22,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 81,
                                  ),
                                  Container(
                                    child:

                                        /// Detected as Icon
                                        /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                        Image.network(
                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/3W-tDcuN-[object Object]",
                                      width: 24,
                                      height: 24,
                                      fit: BoxFit.cover,
                                    ),
                                    padding: EdgeInsets.all(
                                      10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        40,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(
                                            0x26000000,
                                          ),
                                          blurRadius: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 335,
                              height: 0.5,
                              decoration: BoxDecoration(
                                color: Color(
                                  0xffe0e0e0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child:

                                              /// Detected as Icon
                                              /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                              Image.network(
                                            "https://resource-hosting.s3.us-west-1.amazonaws.com/9QJsyZw7-[object Object]",
                                            width: 24,
                                            height: 24,
                                            fit: BoxFit.cover,
                                          ),
                                          padding: EdgeInsets.all(
                                            10,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              40,
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(
                                                  0x26000000,
                                                ),
                                                blurRadius: 10,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          child: SizedBox(
                                            child: Text(
                                              "4 seat",
                                              style: TextStyle(
                                                color: Color(
                                                  0xff646464,
                                                ),
                                                fontSize: 10,
                                                fontWeight: FontWeight.w300,
                                                fontFamily: "Poppins",
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            width: 50,
                                          ),
                                        ),
                                      ],
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 16,
                                          height: 10,
                                          decoration: BoxDecoration(
                                            color: Color(
                                              0xffff4200,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                4,
                                              ),
                                              topRight: Radius.circular(
                                                4,
                                              ),
                                              bottomLeft: Radius.circular(
                                                20,
                                              ),
                                              bottomRight: Radius.circular(
                                                20,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 16,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Color(
                                                    0xffff4200,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                      4,
                                                    ),
                                                    topRight: Radius.circular(
                                                      4,
                                                    ),
                                                    bottomLeft: Radius.circular(
                                                      20,
                                                    ),
                                                    bottomRight:
                                                        Radius.circular(
                                                      20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              Container(
                                                width: 40,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  color: Color(
                                                    0xfff8f8f8,
                                                  ),
                                                  border: Border.all(
                                                    color: Color(
                                                      0xffff4200,
                                                    ),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    30,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              Container(
                                                width: 16,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Color(
                                                    0xffff4200,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                      4,
                                                    ),
                                                    topRight: Radius.circular(
                                                      4,
                                                    ),
                                                    bottomLeft: Radius.circular(
                                                      20,
                                                    ),
                                                    bottomRight:
                                                        Radius.circular(
                                                      20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Container(
                                          width: 16,
                                          height: 10,
                                          decoration: BoxDecoration(
                                            color: Color(
                                              0xffff4200,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                4,
                                              ),
                                              topRight: Radius.circular(
                                                4,
                                              ),
                                              bottomLeft: Radius.circular(
                                                20,
                                              ),
                                              bottomRight: Radius.circular(
                                                20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          child: Text(
                                            "2 table",
                                            style: TextStyle(
                                              color: Color(
                                                0xff646464,
                                              ),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300,
                                              fontFamily: "Poppins",
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          width: 50,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          child:

                                              /// Detected as Icon
                                              /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                              Image.network(
                                            "https://resource-hosting.s3.us-west-1.amazonaws.com/VwvfX532-[object Object]",
                                            width: 24,
                                            height: 24,
                                            fit: BoxFit.cover,
                                          ),
                                          padding: EdgeInsets.all(
                                            10,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                              40,
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(
                                                  0x26000000,
                                                ),
                                                blurRadius: 10,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                    ),
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 335,
                              height: 0.5,
                              decoration: BoxDecoration(
                                color: Color(
                                  0xffe0e0e0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child:

                                        /// Detected as Icon
                                        /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                        Image.network(
                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/R8ZUFA7u-[object Object]",
                                      width: 24,
                                      height: 24,
                                      fit: BoxFit.cover,
                                    ),
                                    padding: EdgeInsets.all(
                                      10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        40,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(
                                            0x26000000,
                                          ),
                                          blurRadius: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 81,
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 16,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Color(
                                                    0xffff4200,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                      4,
                                                    ),
                                                    topRight: Radius.circular(
                                                      4,
                                                    ),
                                                    bottomLeft: Radius.circular(
                                                      20,
                                                    ),
                                                    bottomRight:
                                                        Radius.circular(
                                                      20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 7,
                                              ),
                                              Container(
                                                width: 16,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Color(
                                                    0xffff4200,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                      4,
                                                    ),
                                                    topRight: Radius.circular(
                                                      4,
                                                    ),
                                                    bottomLeft: Radius.circular(
                                                      20,
                                                    ),
                                                    bottomRight:
                                                        Radius.circular(
                                                      20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 16,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Color(
                                                    0xffff4200,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                      4,
                                                    ),
                                                    topRight: Radius.circular(
                                                      4,
                                                    ),
                                                    bottomLeft: Radius.circular(
                                                      20,
                                                    ),
                                                    bottomRight:
                                                        Radius.circular(
                                                      20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              Container(
                                                width: 60,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  color: Color(
                                                    0xfff8f8f8,
                                                  ),
                                                  border: Border.all(
                                                    color: Color(
                                                      0xffff4200,
                                                    ),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    30,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              Container(
                                                width: 16,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Color(
                                                    0xffff4200,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                      4,
                                                    ),
                                                    topRight: Radius.circular(
                                                      4,
                                                    ),
                                                    bottomLeft: Radius.circular(
                                                      20,
                                                    ),
                                                    bottomRight:
                                                        Radius.circular(
                                                      20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 16,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Color(
                                                    0xffff4200,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                      4,
                                                    ),
                                                    topRight: Radius.circular(
                                                      4,
                                                    ),
                                                    bottomLeft: Radius.circular(
                                                      20,
                                                    ),
                                                    bottomRight:
                                                        Radius.circular(
                                                      20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 7,
                                              ),
                                              Container(
                                                width: 16,
                                                height: 10,
                                                decoration: BoxDecoration(
                                                  color: Color(
                                                    0xffff4200,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                      4,
                                                    ),
                                                    topRight: Radius.circular(
                                                      4,
                                                    ),
                                                    bottomLeft: Radius.circular(
                                                      20,
                                                    ),
                                                    bottomRight:
                                                        Radius.circular(
                                                      20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 81,
                                  ),
                                  Container(
                                    child:

                                        /// Detected as Icon
                                        /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                        Image.network(
                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/ETQ89JYd-[object Object]",
                                      width: 24,
                                      height: 24,
                                      fit: BoxFit.cover,
                                    ),
                                    padding: EdgeInsets.all(
                                      10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        40,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(
                                            0x26000000,
                                          ),
                                          blurRadius: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 335,
                              height: 0.5,
                              decoration: BoxDecoration(
                                color: Color(
                                  0xffe0e0e0,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child:

                                        /// Detected as Icon
                                        /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                        Image.network(
                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/shoCfRWz-[object Object]",
                                      width: 24,
                                      height: 24,
                                      fit: BoxFit.cover,
                                    ),
                                    padding: EdgeInsets.all(
                                      10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        40,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(
                                            0x26000000,
                                          ),
                                          blurRadius: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 61,
                                  ),
                                  Container(
                                    child: SizedBox(
                                      child: Text(
                                        "Entire space",
                                        style: TextStyle(
                                          color: Color(
                                            0xff929292,
                                          ),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: "Poppins",
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      width: 104,
                                    ),
                                    padding: EdgeInsets.all(
                                      10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(
                                        0xfff8f8f8,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        20,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 61,
                                  ),
                                  Container(
                                    child:

                                        /// Detected as Icon
                                        /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                        Image.network(
                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/GpRE2Eaw-[object Object]",
                                      width: 24,
                                      height: 24,
                                      fit: BoxFit.cover,
                                    ),
                                    padding: EdgeInsets.all(
                                      10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        40,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(
                                            0x26000000,
                                          ),
                                          blurRadius: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.only(
                    bottom: 10,
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
                              child: Text(
                                "Advance",
                                style: TextStyle(
                                  color: Color(
                                    0xffff4200,
                                  ),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                ),
                                textAlign: TextAlign.center,
                              ),
                              padding: EdgeInsets.only(
                                top: 10,
                                bottom: 2,
                              ),
                            ),
                            Text(
                              "Need to pay 300 tk minimum in advance.",
                              style: TextStyle(
                                color: Color(
                                  0xff929292,
                                ),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Poppins",
                              ),
                              textAlign: TextAlign.center,
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
                                    width: 22,
                                    height: 22,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(
                                          0xffff4200,
                                        ),
                                        width: 1.5,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  SizedBox(
                                    child: Text(
                                      "Debit or credit cards",
                                      style: TextStyle(
                                        color: Color(
                                          0xff646464,
                                        ),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    width: 306,
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  /// Detected as Icon
                                  /// FIXME: Check your design. this is an icon of node "Group 689". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                  Image.network(
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/U_ksiHs3-[object Object]",
                                    width: 22,
                                    height: 22,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  SizedBox(
                                    child: Text(
                                      "Mobile banking",
                                      style: TextStyle(
                                        color: Color(
                                          0xffff4200,
                                        ),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    width: 306,
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              child: Stack(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        3,
                                      ),
                                    ),
                                  ),

                                  /// wrap:positioned of "image 106"
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        width: 132.48,
                                        height: 88.51,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://resource-hosting.s3.us-west-1.amazonaws.com/0Ybll3vg-[object Object]",
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
                              width: 60,
                              height: 60,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              child: Stack(
                                children: [
                                  Container(
                                    child: Container(
                                      width: 89,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "https://resource-hosting.s3.us-west-1.amazonaws.com/MQbg3JDD-[object Object]",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    width: 89,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        3,
                                      ),
                                    ),
                                  ),

                                  /// stack requires empty non positioned widget to work properly. refer: https://github.com/flutter/flutter/issues/49631#issuecomment-582090992
                                  Container(),
                                ],
                              ),
                              width: 89,
                              height: 60,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 63,
                              height: 60,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/X5Fu0jeZ-[object Object]",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(
                                  3,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(
                                      0x11000000,
                                    ),
                                    offset: Offset(
                                      2,
                                      3,
                                    ),
                                    blurRadius: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                        ),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.only(
                    bottom: 100,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            padding: EdgeInsets.all(
              20,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}