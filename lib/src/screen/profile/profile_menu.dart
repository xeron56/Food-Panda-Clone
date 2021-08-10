import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/elements/ShoppingCartButtonWidget.dart';
import 'package:food_delivery_app/src/screen/profile/edit_profile.dart';
import 'package:food_delivery_app/src/screen/profile/my_profile.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //
      // ─── APPBAR ──────────────────────────────────────────────────────
      //

        
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Theme.of(context).hintColor),
          // onPressed: () => Navigator.of(context).pushNamed('/Details', arguments: RouteArgument(id: '0', param: _con.restaurant.id, heroTag: 'menu_tab')),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          '',
          overflow: TextOverflow.fade,
          softWrap: false,
          style: Theme.of(context)
              .textTheme
              .headline6
              .merge(TextStyle(letterSpacing: 0)),
        ),
        actions: <Widget>[
          new ShoppingCartButtonWidget(
              iconColor: Theme.of(context).hintColor,
              labelColor: Theme.of(context).accentColor),
        ],
      ),

      //
      // ─── BODY ────────────────────────────────────────────────────────
      //

        
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: 812,
        color: Colors.white,
        padding: const EdgeInsets.only(
          bottom: 56,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container(
            //   color: Colors.white,
            //   child: Column(
            //     mainAxisSize: MainAxisSize.min,
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Container(
            //         color: Colors.white,
            //         padding: const EdgeInsets.symmetric(
            //           horizontal: 20,
            //           vertical: 11,
            //         ),
            //         child: Row(
            //           mainAxisSize: MainAxisSize.min,
            //           mainAxisAlignment: MainAxisAlignment.start,
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Container(
            //               decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(20),
            //                 color: Colors.white,
            //               ),
            //               padding: const EdgeInsets.all(7),
            //               child: Row(
            //                 mainAxisSize: MainAxisSize.min,
            //                 mainAxisAlignment: MainAxisAlignment.start,
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   Container(
            //                     width: 21,
            //                     height: 21,
            //                     decoration: BoxDecoration(
            //                       borderRadius: BorderRadius.circular(8),
            //                     ),
            //                     child: Image.network(
            //                       "https://resource-hosting.s3.us-west-1.amazonaws.com/b15SH_KN-[object Object]",
            //                       width: 35,
            //                       height: 35,
            //                       fit: BoxFit.cover,
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //             SizedBox(width: 10),
            //             SizedBox(
            //               width: 256,
            //               child: Text(
            //                 "More",
            //                 style: TextStyle(
            //                   color: Color(0xff929292),
            //                   fontSize: 14,
            //                 ),
            //               ),
            //             ),
            //             SizedBox(width: 10),
            //             Container(
            //               width: 24,
            //               height: 24,
            //               decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(8),
            //               ),
            //               child: Image.network(
            //                 "https://resource-hosting.s3.us-west-1.amazonaws.com/bJce2Ss2-[object Object]",
            //                 width: 24,
            //                 height: 24,
            //                 fit: BoxFit.cover,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(height: 3),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xffff4200),
                  padding: const EdgeInsets.all(20),
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
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(88.03),
                              border: Border.all(
                                color: Colors.white,
                                width: 1.76,
                              ),
                            ),
                            padding: const EdgeInsets.all(3),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 74.72,
                                  height: 74.72,
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 74.72,
                                        height: 74.72,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xffc4c4c4),
                                        ),
                                      ),
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            width: 77.84,
                                            height: 116.56,
                                            child: FlutterLogo(
                                                size: 77.83979034423828),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 245,
                                    height: 22,
                                    child: Text(
                                      "Maria Ulffa",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 12,
                                        height: 12,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Image.network(
                                          "https://resource-hosting.s3.us-west-1.amazonaws.com/0Xdg2J19-[object Object]",
                                          width: 12.000000953674316,
                                          height: 12.000000953674316,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "Dhaka, Mirpur 12, D Block",
                                        style: TextStyle(
                                          color: Color(0xfff8f8f8),
                                          fontSize: 12,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EditProfile()),
                                      );
                                    },
                                    child: Text(
                                      "Edit profile",
                                      style: TextStyle(
                                        color: Color(0xfff8f8f8),
                                        fontSize: 12,
                                        decoration: TextDecoration.underline,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color(0xfff8f8f8),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 41,
                    vertical: 20,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Color(0xff929292),
                            width: 0.50,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x14000000),
                              blurRadius: 12,
                              offset: Offset(0, 0),
                            ),
                          ],
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 15,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 19,
                              height: 15,
                              child: Text(
                                "26",
                                style: TextStyle(
                                  color: Color(0xff646464),
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            SizedBox(
                              width: 56,
                              height: 13,
                              child: Text(
                                "Followers",
                                style: TextStyle(
                                  color: Color(0xff646464),
                                  fontSize: 12,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Color(0xff646464),
                            width: 0.50,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x14000000),
                              blurRadius: 12,
                              offset: Offset(0, 0),
                            ),
                          ],
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 15,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 15,
                              height: 15,
                              child: Text(
                                "12",
                                style: TextStyle(
                                  color: Color(0xff646464),
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(width: 5),
                            SizedBox(
                              width: 62,
                              height: 13,
                              child: Text(
                                "Followings",
                                style: TextStyle(
                                  color: Color(0xff646464),
                                  fontSize: 12,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Color(0xffe0e0e0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              color: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                vertical: 18,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 22,
                                    height: 22,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Image.network(
                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/1znYQJKZ-[object Object]",
                                      width: 22,
                                      height: 22,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MyProfile()),
                                      );
                                    },
                                    child: SizedBox(
                                      width: 271,
                                      child: Text(
                                        "My Profile",
                                        style: TextStyle(
                                          color: Color(0xff646464),
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    width: 22,
                                    height: 22,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Image.network(
                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/8MuhS76e-[object Object]",
                                      width: 22,
                                      height: 22,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 0.50),
                            Container(
                              color: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                vertical: 18,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 22,
                                    height: 22,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Image.network(
                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/FPWt83vf-[object Object]",
                                      width: 22,
                                      height: 22,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    width: 271,
                                    child: Text(
                                      "Notifications (2 new)",
                                      style: TextStyle(
                                        color: Color(0xffff4200),
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    width: 22,
                                    height: 22,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Image.network(
                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/5x1RrpZl-[object Object]",
                                      width: 22,
                                      height: 22,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 0.50),
                            Container(
                              color: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                vertical: 18,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 22,
                                    height: 22,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Image.network(
                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/ysmv4aTG-[object Object]",
                                      width: 22,
                                      height: 22,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    width: 271,
                                    child: Text(
                                      "Addresses",
                                      style: TextStyle(
                                        color: Color(0xff646464),
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    width: 22,
                                    height: 22,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Image.network(
                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/hQpa3ixb-[object Object]",
                                      width: 22,
                                      height: 22,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 0.50),
                            Container(
                              color: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                vertical: 18,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 22,
                                    height: 22,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Image.network(
                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/8IecW7oa-[object Object]",
                                      width: 22,
                                      height: 22,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  SizedBox(
                                    width: 271,
                                    child: Text(
                                      "Settings",
                                      style: TextStyle(
                                        color: Color(0xff646464),
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    width: 22,
                                    height: 22,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Image.network(
                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/A-Ul2yNP-[object Object]",
                                      width: 22,
                                      height: 22,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 0.50),
                            Container(
                              color: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                vertical: 18,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 22,
                                    height: 22,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Image.network(
                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/1UGwBiUB-[object Object]",
                                      width: 22,
                                      height: 22,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  GestureDetector(
                                    // onTap: () {
                                    //   showDialog(
                                    //       context: context,
                                    //       builder: (context) =>
                                    //           ());
                                    // },
                                    child: SizedBox(
                                      width: 303,
                                      child: Text(
                                        "Log out",
                                        style: TextStyle(
                                          color: Color(0xff646464),
                                          fontSize: 15,
                                        ),
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
          ],
        ),
      ),
    );
  }
}
