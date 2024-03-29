import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/controllers/search_controller.dart';
import 'package:food_delivery_app/src/elements/CardWidget.dart';
import 'package:food_delivery_app/src/elements/CircularLoadingWidget.dart';
import 'package:food_delivery_app/src/elements/FoodItemWidget.dart';
import 'package:food_delivery_app/src/elements/VerticalCardCarouselWidget.dart';
import 'package:food_delivery_app/src/models/route_argument.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../generated/l10n.dart';
import '../controllers/home_controller.dart';
import '../elements/CardsCarouselWidget.dart';
import '../elements/CaregoriesCarouselWidget.dart';
import '../elements/DeliveryAddressBottomSheetWidget.dart';
import '../elements/FoodsCarouselWidget.dart';
import '../elements/GridWidget.dart';
import '../elements/HomeSliderWidget.dart';
import '../elements/ReviewsListWidget.dart';
import '../elements/SearchBarWidget.dart';
import '../elements/ShoppingCartButtonWidget.dart';
import '../repository/settings_repository.dart' as settingsRepo;
import '../repository/user_repository.dart';

//which fatches all setting data from the server
class HomeWidget extends StatefulWidget {
  
  final GlobalKey<ScaffoldState> parentScaffoldKey;
   String heroTag;
   String horizontal;

  HomeWidget({Key key, this.parentScaffoldKey}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends StateMVC<HomeWidget> {
  HomeController _con;

  String horizontal;
  

  _HomeWidgetState() : super(HomeController()) {
    //calling the home controller to fetch the data from the server
    _con = controller;
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      // ─── APPBAR ──────────────────────────────────────────────────────
      //

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(57.0), // here the desired height
        child: AppBar(
          // leading: new IconButton(
          //   icon: new Icon(Icons.sort, color: Theme.of(context).hintColor),//drawer part of the appbar
          //   onPressed: () => widget.parentScaffoldKey.currentState.openDrawer(),
          // ),

          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,

          // title: ValueListenableBuilder(
          //   valueListenable: settingsRepo.setting,
          //   builder: (context, value, child) {
          //     return Text(
          //       value.appName ?? S.of(context).home,
          //       style: Theme.of(context).textTheme.headline6.merge(TextStyle(letterSpacing: 1.3)),
          //     );
          //   },
          // ),

          title: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 21,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.network(
                    "https://resource-hosting.s3.us-west-1.amazonaws.com/NDNpJxdX-[object Object]",
                    width: 21,
                    height: 21,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 210,
                      height: 14,
                      child: Text(
                        "Dhaka",
                        style: TextStyle(
                          color: Color(0xffff4200),
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(height: 3),
                    SizedBox(
                      width: 210,
                      height: 10,
                      child: Text(
                        "Mirpur - 12",
                        style: TextStyle(
                          color: Color(0xff202020),
                          fontSize: 10,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () =>
                          widget.parentScaffoldKey.currentState.openDrawer(),
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.network(
                          "https://resource-hosting.s3.us-west-1.amazonaws.com/RUgpkHUR-[object Object]",
                          width: 24,
                          height: 24,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Row(
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
                        "https://resource-hosting.s3.us-west-1.amazonaws.com/WMT2FktQ-[object Object]",
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),

      // actions: <Widget>[
      //   new ShoppingCartButtonWidget(iconColor: Theme.of(context).hintColor, labelColor: Theme.of(context).accentColor),
      // ],

      body: RefreshIndicator(
        onRefresh: _con.refreshHome,
        child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: List.generate(
                    settingsRepo.setting.value.homeSections.length, (index) {
                  String _homeSection =
                      settingsRepo.setting.value.homeSections.elementAt(index);
                  switch (_homeSection) {
                    // case 'slider':
                    //   return HomeSliderWidget(slides: _con.slides);
                    case 'search':
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SearchBarWidget(
                          onClickFilter: (event) {
                            widget.parentScaffoldKey.currentState
                                .openEndDrawer();
                          },
                        ),
                      );
                    case 'top_restaurants_heading':
                      return Padding(
                        padding: const EdgeInsets.only(
                            top: 15, left: 20, right: 20, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    S.of(context).top_restaurants,
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                    maxLines: 1,
                                    softWrap: false,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    if (currentUser.value.apiToken == null) {
                                      _con.requestForCurrentLocation(context);
                                    } else {
                                      var bottomSheetController = widget
                                          .parentScaffoldKey.currentState
                                          .showBottomSheet(
                                        (context) =>
                                            DeliveryAddressBottomSheetWidget(
                                                scaffoldKey:
                                                    widget.parentScaffoldKey),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: new BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10)),
                                        ),
                                      );
                                      bottomSheetController.closed
                                          .then((value) {
                                        _con.refreshHome();
                                      });
                                    }
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 6, horizontal: 10),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: settingsRepo.deliveryAddress.value
                                                  ?.address ==
                                              null
                                          ? Theme.of(context)
                                              .focusColor
                                              .withOpacity(0.1)
                                          : Theme.of(context).accentColor,
                                    ),
                                    child: Text(
                                      S.of(context).delivery,
                                      style: TextStyle(
                                          color: settingsRepo.deliveryAddress
                                                      .value?.address ==
                                                  null
                                              ? Theme.of(context).hintColor
                                              : Theme.of(context).primaryColor),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 7),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      settingsRepo.deliveryAddress.value
                                          ?.address = null;
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 6, horizontal: 10),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      color: settingsRepo.deliveryAddress.value
                                                  ?.address !=
                                              null
                                          ? Theme.of(context)
                                              .focusColor
                                              .withOpacity(0.1)
                                          : Theme.of(context).accentColor,
                                    ),
                                    child: Text(
                                      S.of(context).pickup,
                                      style: TextStyle(
                                          color: settingsRepo.deliveryAddress
                                                      .value?.address !=
                                                  null
                                              ? Theme.of(context).hintColor
                                              : Theme.of(context).primaryColor),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            if (settingsRepo.deliveryAddress.value?.address !=
                                null)
                              Padding(
                                padding: const EdgeInsets.only(top: 12),
                                child: Text(
                                  S.of(context).near_to +
                                      " " +
                                      (settingsRepo
                                          .deliveryAddress.value?.address),
                                  style: Theme.of(context).textTheme.caption,
                                ),
                              ),
                          ],
                        ),
                      );

                    //
                    // TOP RESTAURANTS CARD
                    //

                    case 'top_restaurants':
                      return CardsCarouselWidget(
                          restaurantsList: _con.topRestaurants,
                          heroTag: 'home_top_restaurants',
                          direction: 'horizontal');

                    case 'categories':
                       return VerticalCardCarouselWidget(
                          restaurantsList: _con.topRestaurants,
                          heroTag: 'home_top_restaurant',
                          direction: 'horizontal');

                    //
                    // TENDRING THIS WEEK
                    //

                    // case 'trending_week_heading':
                    //   return ListTile(
                    //     dense: true,
                    //     contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    //     leading: Icon(
                    //       Icons.trending_up,
                    //       color: Theme.of(context).hintColor,
                    //     ),
                    //     title: Text(
                    //       S.of(context).trending_this_week,
                    //       style: Theme.of(context).textTheme.headline4,
                    //     ),
                    //     subtitle: Text(
                    //       S.of(context).clickOnTheFoodToGetMoreDetailsAboutIt,
                    //       maxLines: 2,
                    //       style: Theme.of(context).textTheme.caption,
                    //     ),
                    //   );
                    // case 'trending_week':
                    //   return FoodsCarouselWidget(
                    //       foodsList: _con.trendingFoods,
                    //       heroTag: 'home_food_carousel');

                    //
                    // FOOD CATAGORY HEADING
                    //

                    // case 'categories_heading':
                    //   return Padding(
                    //     padding: const EdgeInsets.symmetric(horizontal: 20),
                    //     child: ListTile(
                    //       dense: true,
                    //       contentPadding: EdgeInsets.symmetric(vertical: 0),
                    //       leading: Icon(
                    //         Icons.category,
                    //         color: Theme.of(context).hintColor,
                    //       ),
                    //       title: Text(
                    //         S.of(context).food_categories,
                    //         style: Theme.of(context).textTheme.headline4,
                    //       ),
                    //     ),
                    //   );

                    // case 'categories':
                    //   return CategoriesCarouselWidget(
                    //     categories: _con.categories,
                    //   );

                    //
                    // POPULAR RESTAURENT
                    //

                    // case 'popular_heading':
                    //   return Padding(
                    //     padding:
                    //         const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    //     child: ListTile(
                    //       dense: true,
                    //       contentPadding: EdgeInsets.symmetric(vertical: 0),
                    //       leading: Icon(
                    //         Icons.trending_up,
                    //         color: Theme.of(context).hintColor,
                    //       ),
                    //       title: Text(
                    //         S.of(context).most_popular,
                    //         style: Theme.of(context).textTheme.headline4,
                    //       ),
                    //     ),
                    //   );
                    // case 'popular':
                    //   return Padding(
                    //     padding: const EdgeInsets.symmetric(horizontal: 20),
                    //     child: GridWidget(
                    //       restaurantsList: _con.popularRestaurants,
                    //       heroTag: 'home_restaurants',
                    //     ),
                    //   );

                    // case 'recent_reviews_heading':
                    //   return Padding(
                    //     padding: const EdgeInsets.symmetric(horizontal: 20),
                    //     child: ListTile(
                    //       dense: true,
                    //       contentPadding: EdgeInsets.symmetric(vertical: 20),
                    //       leading: Icon(
                    //         Icons.recent_actors,
                    //         color: Theme.of(context).hintColor,
                    //       ),
                    //       title: Text(
                    //         S.of(context).recent_reviews,
                    //         style: Theme.of(context).textTheme.headline4,
                    //       ),
                    //     ),
                    //   );
                    // case 'recent_reviews':
                    //   return Padding(
                    //     padding: const EdgeInsets.symmetric(horizontal: 20),
                    //     child: ReviewsListWidget(reviewsList: _con.recentReviews),
                    //   );
                    default:
                      return SizedBox(height: 0);
                  }
                }),
              ),
              
            ),
      ),
    );
  }
}
