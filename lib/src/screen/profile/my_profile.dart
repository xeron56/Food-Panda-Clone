import 'package:flutter/material.dart';


import 'package:food_delivery_app/src/screen/profile/change_password_modal.dart';
import 'package:food_delivery_app/src/screen/profile/edit_profile.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class MyProfile extends StatefulWidget {
  MyProfile({Key key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                child: Container(
                  child: Row(
                    children: [
                      /// Detected as Icon
                      /// FIXME: Check your design. this is an icon of node "Frame 810". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.network(
                          "https://resource-hosting.s3.us-west-1.amazonaws.com/tbIqljE9-[object Object]",
                          width: 35,
                          height: 35,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        child: Text(
                          "My profile",
                          style: TextStyle(
                            color: Color(
                              0xff929292,
                            ),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),
                        ),
                        width: 256,
                      ),
                      SizedBox(
                        width: 10,
                      ),

                      /// Detected as Icon
                      /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                      Image.network(
                        "https://resource-hosting.s3.us-west-1.amazonaws.com/tG74HUe8-[object Object]",
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
                    horizontal: 20,
                    vertical: 11,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(
                        0xa000000,
                      ),
                      offset: Offset(
                        0,
                        4,
                      ),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              child: Container(
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 74.72,
                                      height: 74.72,
                                      decoration: BoxDecoration(
                                        color: Color(
                                          0xffc4c4c4,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                    ),

                                    /// wrap:positioned of "image 105"
                                    Positioned.fill(
                                      child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          width: 77.84,
                                          height: 116.56,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                "https://resource-hosting.s3.us-west-1.amazonaws.com/yDS2h7AC-[object Object]",
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
                                width: 74.72,
                                height: 74.72,
                              ),
                              padding: EdgeInsets.all(
                                3,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  88.03300476074219,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                            "MariA Ulffa",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: "Poppins",
                                            ),
                                          ),
                                          width: 245,
                                          height: 22,
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              /// Detected as Icon
                                              /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                              Image.network(
                                                "https://resource-hosting.s3.us-west-1.amazonaws.com/U6SW_cAF-[object Object]",
                                                width: 12.000000953674316,
                                                height: 12.000000953674316,
                                                fit: BoxFit.cover,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "Dhaka, Mirpur 12, D Block",
                                                style: TextStyle(
                                                  color: Color(
                                                    0xfff8f8f8,
                                                  ),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
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
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EditProfile()),
                                      );
                                    },
                                    child: Container(
                                      child: Container(
                                        child: Text(
                                          "Edit profile",
                                          style: TextStyle(
                                            color: Color(
                                              0xfff8f8f8,
                                            ),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Poppins",
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        vertical: 10,
                                      ),
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
                      ),
                      padding: EdgeInsets.all(
                        20,
                      ),
                      decoration: BoxDecoration(
                        color: Color(
                          0xffff4200,
                        ),
                      ),
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
                                Text(
                                  "Name:",
                                  style: TextStyle(
                                    color: Color(
                                      0xff646464,
                                    ),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Maria Ulffa",
                                  style: TextStyle(
                                    color: Color(
                                      0xff202020,
                                    ),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
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
                                Text(
                                  "Email:",
                                  style: TextStyle(
                                    color: Color(
                                      0xff646464,
                                    ),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "demo@email.com",
                                  style: TextStyle(
                                    color: Color(
                                      0xff202020,
                                    ),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
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
                                Text(
                                  "Birthday:",
                                  style: TextStyle(
                                    color: Color(
                                      0xff646464,
                                    ),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "27/10/94",
                                  style: TextStyle(
                                    color: Color(
                                      0xff202020,
                                    ),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
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
                                Text(
                                  "Contacts:",
                                  style: TextStyle(
                                    color: Color(
                                      0xff646464,
                                    ),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "+880 1234 567 890",
                                  style: TextStyle(
                                    color: Color(
                                      0xff202020,
                                    ),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
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
                                Text(
                                  "Gender:",
                                  style: TextStyle(
                                    color: Color(
                                      0xff646464,
                                    ),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                    color: Color(
                                      0xff202020,
                                    ),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Poppins",
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
                      padding: EdgeInsets.all(
                        20,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showCupertinoModalBottomSheet(
                          context: context,
                          builder: (context) => Container(
                            child: ChangePasswordModal(),
                          ),
                        );
                      },
                      child: Container(
                        child: Text(
                          "Change password?",
                          style: TextStyle(
                            color: Color(
                              0xffff4200,
                            ),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        padding: EdgeInsets.all(
                          20,
                        ),
                      ),
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
              30,
            ),
          ),
        ),
      ),
    );
  }
}
