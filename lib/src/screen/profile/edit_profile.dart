import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 18,
              ),
              Container(
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 136,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Edit my profile",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff646464),
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 155),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            padding: const EdgeInsets.all(10),
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
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Image.network(
                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/EPQBRVvD-[object Object]",
                                      width: 24,
                                      height: 24,
                                      fit: BoxFit.cover,
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
              SizedBox(
                height: 92,
              ),
              Container(
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
                                "Name",
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
                                vertical: 5,
                              ),
                            ),
                            Container(
                              child: SizedBox(
                                child: Text(
                                  "Maria Ulffa",
                                  style: TextStyle(
                                    color: Color(
                                      0xff646464,
                                    ),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                width: 303,
                              ),
                              padding: EdgeInsets.all(
                                16,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                              ),
                            ),
                          ],
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
                              child: Text(
                                "Email",
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
                                vertical: 5,
                              ),
                            ),
                            Container(
                              child: SizedBox(
                                child: Text(
                                  "maria.ulffa@demo.com",
                                  style: TextStyle(
                                    color: Color(
                                      0xff646464,
                                    ),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                width: 303,
                              ),
                              padding: EdgeInsets.all(
                                16,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                              ),
                            ),
                          ],
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
                              child: Text(
                                "Phone",
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
                                vertical: 5,
                              ),
                            ),
                            Container(
                              child: SizedBox(
                                child: Text(
                                  "Enter phone number",
                                  style: TextStyle(
                                    color: Color(
                                      0xff646464,
                                    ),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                width: 303,
                              ),
                              padding: EdgeInsets.all(
                                16,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                              ),
                            ),
                          ],
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
                              child: Text(
                                "Date of birth",
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
                                vertical: 5,
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    child: Text(
                                      "Choose date",
                                      style: TextStyle(
                                        color: Color(
                                          0xff646464,
                                        ),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    width: 279,
                                  ),

                                  /// Detected as Icon
                                  /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                  Image.network(
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/J8ct9KsT-[object Object]",
                                    width: 24,
                                    height: 24,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 13,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                              ),
                            ),
                          ],
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
                              child: Text(
                                "Gender",
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
                                vertical: 5,
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        /// Detected as Icon
                                        /// FIXME: Check your design. this is an icon of node "Circle". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                        Image.network(
                                          "https://resource-hosting.s3.us-west-1.amazonaws.com/Lowj1LY_-[object Object]",
                                          width: 24,
                                          height: 24,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Text(
                                          "Male",
                                          style: TextStyle(
                                            color: Color(
                                              0xff646464,
                                            ),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
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
                                    width: 30,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        /// Detected as Icon
                                        /// FIXME: Check your design. this is an icon of node "Circle". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                        Image.network(
                                          "https://resource-hosting.s3.us-west-1.amazonaws.com/bgW1cCeR-[object Object]",
                                          width: 24,
                                          height: 24,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Text(
                                          "Female",
                                          style: TextStyle(
                                            color: Color(
                                              0xff646464,
                                            ),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
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
                                    width: 30,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        /// Detected as Icon
                                        /// FIXME: Check your design. this is an icon of node "Circle". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                        Image.network(
                                          "https://resource-hosting.s3.us-west-1.amazonaws.com/X1hZwGsg-[object Object]",
                                          width: 24,
                                          height: 24,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(
                                          width: 9,
                                        ),
                                        Text(
                                          "Others",
                                          style: TextStyle(
                                            color: Color(
                                              0xff646464,
                                            ),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Poppins",
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                padding: EdgeInsets.all(
                  20,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 92,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Container(
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          child: SizedBox(
                            child: Text(
                              "Cancel",
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
                            width: 58,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 15,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              30,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: SizedBox(
                            child: Text(
                              "Confirm Edit",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                              ),
                              textAlign: TextAlign.center,
                            ),
                            width: 122,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 43,
                            vertical: 15,
                          ),
                          decoration: BoxDecoration(
                            color: Color(
                              0xffff4200,
                            ),
                            borderRadius: BorderRadius.circular(
                              30,
                            ),
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                    ),
                  ),
                ),
                padding: EdgeInsets.all(
                  20,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      0,
                    ),
                    topRight: Radius.circular(
                      0,
                    ),
                    bottomLeft: Radius.circular(
                      20,
                    ),
                    bottomRight: Radius.circular(
                      20,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(
                        0xa000000,
                      ),
                      offset: Offset(
                        0,
                        -4,
                      ),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
        ),
      ),
    );
  }
}
