import 'package:flutter/material.dart';

class OrderScheduled extends StatefulWidget {
  OrderScheduled({Key key}) : super(key: key);

  @override
  _OrderScheduledState createState() => _OrderScheduledState();
}

class _OrderScheduledState extends State<OrderScheduled> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Container(
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
                                "Order ID - FS34",
                                style: TextStyle(
                                  color: Color(
                                    0xff202020,
                                  ),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                ),
                              ),
                              width: 228,
                            ),
                            Container(
                              child: SizedBox(
                                child: Text(
                                  "289 tk",
                                  style: TextStyle(
                                    color: Color(
                                      0xffff4200,
                                    ),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                width: 107,
                              ),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                        ),
                      ),
                      Container(
                        child: Container(
                          child: Row(
                            children: [
                              Text(
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
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 3,
                                height: 3,
                                decoration: BoxDecoration(
                                  color: Color(
                                    0xffc4c4c4,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Home delivery",
                                style: TextStyle(
                                  color: Color(
                                    0xff646464,
                                  ),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
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
                            "https://resource-hosting.s3.us-west-1.amazonaws.com/0ab4Syx7-[object Object]",
                            width: 17,
                            height: 17,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Today, 11:00 am",
                            style: TextStyle(
                              color: Color(
                                0xffff4200,
                              ),
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Poppins",
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                            "https://resource-hosting.s3.us-west-1.amazonaws.com/hNarHzMl-[object Object]",
                            width: 17,
                            height: 17,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "22 mins left",
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                            "https://resource-hosting.s3.us-west-1.amazonaws.com/928Xmmhg-[object Object]",
                            width: 17,
                            height: 17,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            child: Text(
                              "On demad cooking",
                              style: TextStyle(
                                color: Color(
                                  0xff646464,
                                ),
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontFamily: "Poppins",
                              ),
                            ),
                            width: 119,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            child: Text(
                              "Confirm cooking",
                              style: TextStyle(
                                color: Color(
                                  0xff646464,
                                ),
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                fontFamily: "Poppins",
                                decoration: TextDecoration.underline,
                              ),
                              textAlign: TextAlign.right,
                            ),
                            width: 189,
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "Item detail",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                        ),
                        textAlign: TextAlign.center,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 22,
                        vertical: 8,
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
                      width: 5,
                    ),
                    Container(
                      child: Text(
                        "Addons",
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
                      padding: EdgeInsets.symmetric(
                        horizontal: 22,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      child: Text(
                        "Cancel order",
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
                      padding: EdgeInsets.symmetric(
                        horizontal: 22,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
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
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(
            20,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}