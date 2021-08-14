import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/screen/booking/book_page.dart';
import 'package:food_delivery_app/src/screen/booking/booking_home.dart';
import 'package:food_delivery_app/src/screen/orders/orders_home.dart';
import 'package:food_delivery_app/src/screen/profile/my_profile.dart';
import 'package:food_delivery_app/src/screen/profile/profile_menu.dart';

import '../elements/DrawerWidget.dart';
import '../elements/FilterWidget.dart';
import '../helpers/helper.dart';
import '../models/route_argument.dart';
import '../pages/home.dart';
import '../pages/map.dart';
import '../pages/notifications.dart';
import '../pages/orders.dart';
import 'messages.dart';

// ignore: must_be_immutable
class PagesWidget extends StatefulWidget {
  dynamic currentTab;
  RouteArgument routeArgument;
  Widget currentPage = HomeWidget();
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  PagesWidget({
    Key key,
    this.currentTab,
  }) {
    if (currentTab != null) {
      if (currentTab is RouteArgument) {
        routeArgument = currentTab;
        currentTab = int.parse(currentTab.id);
      }
    } else {
      currentTab = 2;
    }
  }

  @override
  _PagesWidgetState createState() {
    return _PagesWidgetState();
  }
}

class _PagesWidgetState extends State<PagesWidget> {
  initState() {
    super.initState();
    _selectTab(widget.currentTab);
  }

  @override
  void didUpdateWidget(PagesWidget oldWidget) {
    _selectTab(oldWidget.currentTab);
    super.didUpdateWidget(oldWidget);
  }

  void _selectTab(int tabItem) {
    setState(() {
      widget.currentTab = tabItem;
      switch (tabItem) {
        case 0:
          widget.currentPage =
              NotificationsWidget(parentScaffoldKey: widget.scaffoldKey);
          break;
        case 1:
          // widget.currentPage = MapWidget(
          //     parentScaffoldKey: widget.scaffoldKey,
          //     routeArgument: widget.routeArgument);
           widget.currentPage = OrderHome();
          break;
        case 2:
          widget.currentPage =
              HomeWidget(parentScaffoldKey: widget.scaffoldKey); // home page
          break;
        case 3:
          // widget.currentPage =
          //     OrdersWidget(parentScaffoldKey: widget.scaffoldKey);
              widget.currentPage = BookingHome();
          break;
        case 4:
          widget.currentPage = ProfileMenu();
          // widget.currentPage = MessagesWidget(
          //     parentScaffoldKey: widget
          //         .scaffoldKey); //FavoritesWidget(parentScaffoldKey: widget.scaffoldKey);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: Helper.of(context).onWillPop,
      child: Scaffold(
        key: widget.scaffoldKey,
        drawer: DrawerWidget(),
        endDrawer: FilterWidget(onFilter: (filter) {
          Navigator.of(context)
              .pushReplacementNamed('/Pages', arguments: widget.currentTab);
        }),
        body: widget.currentPage,
        bottomNavigationBar: SizedBox(
          height: 78,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Theme.of(context).accentColor,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            iconSize: 22,
            elevation: 0,
            backgroundColor: Colors.transparent,
            selectedIconTheme: IconThemeData(size: 28),
            unselectedItemColor: Theme.of(context).focusColor.withOpacity(1),
            currentIndex: widget.currentTab,
            onTap: (int i) {
              this._selectTab(i);
            },
            // this will be set when a new tab is tapped
            items: [
              //Orders
              BottomNavigationBarItem(
                icon: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /// Detected as Icon
                      /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                      Image.network(
                        "https://resource-hosting.s3.us-west-1.amazonaws.com/0vaRhI-S-[object Object]",
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        child: Text(
                          "Explore",
                          style: TextStyle(
                            color: Color(
                              0xff202020,
                            ),
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Poppins",
                          ),
                          textAlign: TextAlign.center,
                        ),
                        width: 70,
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                ),
                label: '',
              ),

              //
              // ORDER
              //

              
              BottomNavigationBarItem(
                icon: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /// Detected as Icon
                      /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                      Image.network(
                        "https://resource-hosting.s3.us-west-1.amazonaws.com/t0mnsRje-[object Object]",
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        child: Text(
                          "Orders",
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
                        width: 70,
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                ),
                label: '',
              ),
              
              //
              // HOME
              //

              
              BottomNavigationBarItem(
                  label: '',
                  icon: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xfff8f8f8),
                    ),
                    padding: const EdgeInsets.all(6),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xffff4200),
                          ),
                          padding: const EdgeInsets.all(17),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Image.network(
                                  "https://resource-hosting.s3.us-west-1.amazonaws.com/Nt_P5V1V-[object Object]",
                                  width: 24,
                                  height: 24,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              //
              // BOOKING
              //

              BottomNavigationBarItem(
                icon: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /// Detected as Icon
                      /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                      Image.network(
                        "https://resource-hosting.s3.us-west-1.amazonaws.com/mFSDEKmY-[object Object]",
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      SizedBox(
                        child: Text(
                          "Bookings",
                          style: TextStyle(
                            color: Color(
                              0xff202020,
                            ),
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Poppins",
                          ),
                          textAlign: TextAlign.center,
                        ),
                        width: 70,
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                ),
                label: '',
              ),

              //
              // MORE
              //

              BottomNavigationBarItem(
                icon: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /// Detected as Icon
                      /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                      Image.network(
                        "https://resource-hosting.s3.us-west-1.amazonaws.com/x_7SBve0-[object Object]",
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      SizedBox(
                        child: Text(
                          "More",
                          style: TextStyle(
                            color: Color(
                              0xff202020,
                            ),
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Poppins",
                          ),
                          textAlign: TextAlign.center,
                        ),
                        width: 70,
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
