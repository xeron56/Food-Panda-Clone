import 'package:flutter/material.dart';

class ChangePasswordModal extends StatefulWidget {
  ChangePasswordModal({Key key}) : super(key: key);

  @override
  _ChangePasswordModalState createState() => _ChangePasswordModalState();
}

class _ChangePasswordModalState extends State<ChangePasswordModal> {
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
              FlatButton.icon(
                onPressed: () {
                  print("Button clicked!");
                },
                label: Text(
                  "Change password",
                ),
                icon:

                    /// Detected as Icon
                    /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                    Image.network(
                  "https://resource-hosting.s3.us-west-1.amazonaws.com/1gQRKpp4-[object Object]",
                  width: 24,
                  height: 24,
                  fit: BoxFit.cover,
                ),
                color: Colors.white,
                textColor: Color(
                  0xff646464,
                ),
                minWidth: 375,
                height: 54,
                shape: RoundedRectangleBorder(),
              ),
              SizedBox(
                height: 161.5,
              ),
              Container(
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
                              child: Text(
                                "Old password",
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
                                      "Enter password",
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
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/9FQ3CKBc-[object Object]",
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
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "New password",
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
                                      "Enter password",
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
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/qrPZnhVA-[object Object]",
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
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "Confirm new password",
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
                                      "Enter password",
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
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/wjnr7bfs-[object Object]",
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
              SizedBox(
                height: 120,
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
