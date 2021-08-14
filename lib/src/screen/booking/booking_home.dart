import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/elements/SearchWidget.dart';
import 'package:food_delivery_app/src/elements/ShoppingCartButtonWidget.dart';
import 'package:food_delivery_app/src/pages/home.dart';
import 'package:food_delivery_app/src/screen/booking/book_page.dart';
import 'package:food_delivery_app/src/screen/booking/booking_details.dart';
import 'package:food_delivery_app/src/screen/booking/booking_list_show.dart';

class BookingHome extends StatefulWidget {
  BookingHome({Key key}) : super(key: key);

  @override
  _BookingHomeState createState() => _BookingHomeState();
}

class _BookingHomeState extends State<BookingHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Theme.of(context).hintColor),
          // onPressed: () => Navigator.of(context).pushNamed('/Details', arguments: RouteArgument(id: '0', param: _con.restaurant.id, heroTag: 'menu_tab')),
         onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomeWidget()),
            );
  
          },
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
      body: SingleChildScrollView(
        child: Container(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    children: [
                      // onTap: () {
                      //   Navigator.of(context).push(SearchModal());
                      // },
                      Container(
                        width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Color(0xff929292),
                            width: 0.50,
                          ),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 13,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Image.network(
                                "https://resource-hosting.s3.us-west-1.amazonaws.com/n8yNsmk3-[object Object]",
                                width: 24,
                                height: 24,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 5),
                            SizedBox(
                              width: 200,
                              child: Text(
                                "Search resturant or food",
                                style: TextStyle(
                                  color: Color(0xff929292),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BookingPage()),
                          );
                        },
                        child: Container(
                          child:

                              /// Detected as Icon
                              /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                              Image.network(
                            "https://resource-hosting.s3.us-west-1.amazonaws.com/fEcpmS1D-[object Object]",
                            width: 24,
                            height: 24,
                            fit: BoxFit.cover,
                          ),
                          padding: EdgeInsets.all(
                            13,
                          ),
                          decoration: BoxDecoration(
                            color: Color(
                              0xffff4200,
                            ),
                            borderRadius: BorderRadius.circular(
                              30,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(
                                  0x26000000,
                                ),
                                blurRadius: 12,
                              ),
                            ],
                          ),
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
                      SizedBox(
                        child: Text(
                          "Your Events",
                          style: TextStyle(
                            color: Color(
                              0xff646464,
                            ),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                          ),
                        ),
                        width: 279,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BookingListShow()),
                          );
                        },
                        child: Text(
                          "Show (12)",
                          style: TextStyle(
                            color: Color(
                              0xffff4200,
                            ),
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Poppins",
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Container(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //
                          // HERE
                          //

                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BookingDetails()),
                              );
                            },
                            child: Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                child: SizedBox(
                                                  child: Text(
                                                    "23",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                                    0xffff4200,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                      10,
                                                    ),
                                                    topRight: Radius.circular(
                                                      10,
                                                    ),
                                                    bottomLeft: Radius.circular(
                                                      0,
                                                    ),
                                                    bottomRight:
                                                        Radius.circular(
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
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontFamily: "Poppins",
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
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
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontFamily: "Poppins",
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
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
                                              Container(
                                                child: Row(
                                                  children: [
                                                    /// Detected as Icon
                                                    /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                                    Image.network(
                                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/drHrQsZn-[object Object]",
                                                      width: 17.443017959594727,
                                                      height:
                                                          17.443017959594727,
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
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontFamily: "Poppins",
                                                        ),
                                                      ),
                                                      width: 130,
                                                      height: 11,
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
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Container(
                                                child: Row(
                                                  children: [
                                                    /// Detected as Icon
                                                    /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                                    Image.network(
                                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/uLgR82O5-[object Object]",
                                                      width: 17.443017959594727,
                                                      height:
                                                          17.443017959594727,
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
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          fontFamily: "Poppins",
                                                        ),
                                                      ),
                                                      width: 130,
                                                      height: 11,
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
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        fontFamily: "Poppins",
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                    width: 69,
                                                  ),
                                                  padding: EdgeInsets.all(
                                                    2,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: Color(
                                                      0xffffba09,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
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
                              padding: EdgeInsets.all(
                                20,
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
                          ),
                          Container(
                            child: Container(
                              child: Row(
                                children: [
                                  /// Detected as Icon
                                  /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                  Image.network(
                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/dyom1FZO-[object Object]",
                                    width: 17.443017959594727,
                                    height: 17.443017959594727,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  SizedBox(
                                    child: Text(
                                      "Chezz, Rode #23, D block, Mirpur 12",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    width: 250,
                                    height: 11,
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
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                  0,
                                ),
                                topRight: Radius.circular(
                                  0,
                                ),
                                bottomLeft: Radius.circular(
                                  10,
                                ),
                                bottomRight: Radius.circular(
                                  10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                    ),
                  ),
                  height: 213,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      5,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: SizedBox(
                          child: Text(
                            "Following Resturent",
                            style: TextStyle(
                              color: Color(
                                0xff646464,
                              ),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                          width: 279,
                        ),
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
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Stack(
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    5,
                                                  ),
                                                ),
                                              ),

                                              /// wrap:positioned of "image 116"
                                              Positioned.fill(
                                                child: Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                    width: 349,
                                                    height: 465,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: NetworkImage(
                                                          "https://resource-hosting.s3.us-west-1.amazonaws.com/PjvyVE6P-[object Object]",
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
                                                  "Sultan’s Dine",
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
                                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/BIsXhoEW-[object Object]",
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
                                            "Fruits",
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

                                        /// wrap:positioned of "image 123"
                                        Positioned.fill(
                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                              width: 373.5,
                                              height: 249,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                    "https://resource-hosting.s3.us-west-1.amazonaws.com/k_kBNNHH-[object Object]",
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
                                                  "Testy Treat",
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
                                                      "https://resource-hosting.s3.us-west-1.amazonaws.com/ugg8ZzWn-[object Object]",
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
                                            "Cikken & Frech fry",
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
                  padding: EdgeInsets.only(
                    bottom: 100,
                  ),
                ),
              ],
            ),
            width: 375,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                30,
              ),
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
