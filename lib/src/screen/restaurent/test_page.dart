import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/screen/booking/book_page.dart';
import 'package:food_delivery_app/src/screen/restaurent/qrcode_scan.dart';

class TestPage extends StatelessWidget {
  const TestPage({
    
    this.resName,
    this.resimage,
    this.deliveryTime,
    this.rating,
    this.openTime,
    Key key
    
    }) : super(key: key);

    final resName;
    final resimage;
    final deliveryTime;
    final rating;
    final openTime;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 314,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 314,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                      child: Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 250,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 249.67,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            resimage,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.50,
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 250,
                                    color: Color(0xff202020),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 236,
                            top: 46,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(0),
                                ),
                                color: Color(0x3f202020),
                              ),
                              padding: const EdgeInsets.only(
                                left: 20,
                                right: 15,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Opens at 4:00 PM",
                                    style: TextStyle(
                                      color: Color(0xfff8f8f8),
                                      fontSize: 12,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 48,
                            top: 95,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 279,
                                      child: Text(
                                        resName,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 0.50,
                                        ),
                                        color: Color(0x66202020),
                                      ),
                                      padding: const EdgeInsets.only(
                                        left: 20,
                                        right: 15,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Delivery: 40 mins",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 17,
                                          height: 17,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Image.network(
                                            "https://resource-hosting.s3.us-west-1.amazonaws.com/O7d26WCb-[object Object]",
                                            width: 17,
                                            height: 17,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          //"3.5 (7)",
                                          rating,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 30,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 11,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(7),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: 21,
                                  height: 21,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Image.network(
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/_Iy26AE2-[object Object]",
                                    width: 35,
                                    height: 35,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              //make container clcikable
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          width: 256,
                          child: Text(
                            " ",
                            style: TextStyle(
                              color: Color(0xff929292),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlutterLogo(size: 24),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 15,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BookingPage()),
                              )
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  color: Color(0xff929292),
                                  width: 0.50,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x0a000000),
                                    blurRadius: 6,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 8,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 15.76,
                                    height: 15.76,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Image.network(
                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/bzzqlbUc-[object Object]",
                                      width: 15.760002136230469,
                                      height: 15.760002136230469,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "Book",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff929292),
                                      fontSize: 12,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 8),

                          //==
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => QrcodeScan()),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  color: Color(0xff929292),
                                  width: 0.50,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x0a000000),
                                    blurRadius: 6,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 8,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 15.76,
                                    height: 15.76,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Image.network(
                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/XlwOiatn-[object Object]",
                                      width: 15.760002136230469,
                                      height: 15.760002136230469,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "Scan Menu",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff929292),
                                      fontSize: 12,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x0a000000),
                                  blurRadius: 6,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              color: Color(0xffff4200),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 8,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 15.76,
                                  height: 15.76,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Image.network(
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/V-LO1jjD-[object Object]",
                                    width: 15.760002136230469,
                                    height: 15.760002136230469,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Follow",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
