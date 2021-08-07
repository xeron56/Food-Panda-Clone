import 'package:flutter/material.dart';

class BookingDetails extends StatefulWidget {
  BookingDetails({Key key}) : super(key: key);

  @override
  _BookingDetailsState createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                                        "https://resource-hosting.s3.us-west-1.amazonaws.com/-IJ19eBd-[object Object]",
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                          "https://resource-hosting.s3.us-west-1.amazonaws.com/84AaQl3o-[object Object]",
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
                                            fontWeight: FontWeight.w300,
                                            fontFamily: "Poppins",
                                          ),
                                          textAlign: TextAlign.center,
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
                                            fontWeight: FontWeight.w300,
                                            fontFamily: "Poppins",
                                          ),
                                          textAlign: TextAlign.center,
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: SizedBox(
                                      child: Text(
                                        "23",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Poppins",
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      width: 80,
                                      height: 30,
                                    ),
                                    padding: EdgeInsets.all(
                                      10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(
                                        0xffffba09,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                          10,
                                        ),
                                        topRight: Radius.circular(
                                          10,
                                        ),
                                        bottomLeft: Radius.circular(
                                          0,
                                        ),
                                        bottomRight: Radius.circular(
                                          0,
                                        ),
                                      ),
                                    ),
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
                                        SizedBox(
                                          child: Text(
                                            "Nov",
                                            style: TextStyle(
                                              color: Color(
                                                0xff646464,
                                              ),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Poppins",
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          width: 80,
                                          height: 14,
                                        ),
                                        SizedBox(
                                          child: Text(
                                            "2021",
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
                                          width: 80,
                                          height: 14,
                                        ),
                                      ],
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      vertical: 5,
                                    ),
                                  ),
                                ],
                              ),
                              padding: EdgeInsets.only(
                                bottom: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            SizedBox(
                              child: Text(
                                "Token: B12308",
                                style: TextStyle(
                                  color: Color(
                                    0xff929292,
                                  ),
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: "Poppins",
                                ),
                                textAlign: TextAlign.center,
                              ),
                              width: 68,
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
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
                                    child: Row(
                                      children: [
                                        /// Detected as Icon
                                        /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                        Image.network(
                                          "https://resource-hosting.s3.us-west-1.amazonaws.com/wYA6c_CU-[object Object]",
                                          width: 17.443017959594727,
                                          height: 17.443017959594727,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        SizedBox(
                                          child: Text(
                                            "Morning event",
                                            style: TextStyle(
                                              color: Color(
                                                0xff646464,
                                              ),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                              fontFamily: "Poppins",
                                            ),
                                          ),
                                          width: 192.5,
                                          height: 11,
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
                                    height: 5,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        /// Detected as Icon
                                        /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                        Image.network(
                                          "https://resource-hosting.s3.us-west-1.amazonaws.com/D-_fTlZi-[object Object]",
                                          width: 17.443017959594727,
                                          height: 17.443017959594727,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        SizedBox(
                                          child: Text(
                                            "10:30 am",
                                            style: TextStyle(
                                              color: Color(
                                                0xff646464,
                                              ),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                              fontFamily: "Poppins",
                                            ),
                                          ),
                                          width: 192.5,
                                          height: 11,
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
                                    height: 5,
                                  ),
                                  Container(
                                    child: Container(
                                      child: SizedBox(
                                        child: Text(
                                          "Confirmed",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: "Poppins",
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        width: 69,
                                      ),
                                      padding: EdgeInsets.all(
                                        2,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(
                                          0xff0bc3eb,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    child: Text(
                                      "450 tk",
                                      style: TextStyle(
                                        color: Color(
                                          0xffff4200,
                                        ),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    width: 46,
                                    height: 19,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  SizedBox(
                                    child: Text(
                                      "In advance",
                                      style: TextStyle(
                                        color: Color(
                                          0xff929292,
                                        ),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    width: 57,
                                    height: 15,
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        10,
                      ),
                      topRight: Radius.circular(
                        10,
                      ),
                      bottomLeft: Radius.circular(
                        0,
                      ),
                      bottomRight: Radius.circular(
                        0,
                      ),
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
                                        fontWeight: FontWeight.w300,
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
                                      "3",
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
                                        fontWeight: FontWeight.w300,
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
                                      "10",
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
                                        fontWeight: FontWeight.w300,
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
                                      horizontal: 18,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
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
                                            "2 table",
                                            style: TextStyle(
                                              color: Color(
                                                0xff646464,
                                              ),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300,
                                              fontFamily: "Poppins",
                                            ),
                                          ),
                                          width: 170,
                                        ),
                                        SizedBox(
                                          child: Text(
                                            "4 seat/table",
                                            style: TextStyle(
                                              color: Color(
                                                0xff646464,
                                              ),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300,
                                              fontFamily: "Poppins",
                                            ),
                                          ),
                                          width: 170,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                              ),
                              padding: EdgeInsets.all(
                                20,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  10,
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
                                      horizontal: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
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
                                            "1 table",
                                            style: TextStyle(
                                              color: Color(
                                                0xff646464,
                                              ),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300,
                                              fontFamily: "Poppins",
                                            ),
                                          ),
                                          width: 170,
                                        ),
                                        SizedBox(
                                          child: Text(
                                            "2 seat/table",
                                            style: TextStyle(
                                              color: Color(
                                                0xff646464,
                                              ),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300,
                                              fontFamily: "Poppins",
                                            ),
                                          ),
                                          width: 170,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                              ),
                              padding: EdgeInsets.all(
                                20,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  10,
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
            padding: EdgeInsets.only(
              bottom: 200,
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