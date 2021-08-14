import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/src/pages/menu_list.dart';
import 'package:food_delivery_app/src/screen/restaurent/test_page.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../generated/l10n.dart';
import '../controllers/restaurant_controller.dart';
import '../elements/CircularLoadingWidget.dart';
import '../elements/FoodItemWidget.dart';
import '../elements/GalleryCarouselWidget.dart';
import '../elements/ReviewsListWidget.dart';
import '../elements/ShoppingCartFloatButtonWidget.dart';
import '../helpers/helper.dart';
import '../models/conversation.dart';
import '../models/restaurant.dart';
import '../models/route_argument.dart';
import '../repository/settings_repository.dart';
import '../repository/user_repository.dart';

class RestaurantWidget extends StatefulWidget {
  final RouteArgument routeArgument;
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  RestaurantWidget({Key key, this.parentScaffoldKey, this.routeArgument})
      : super(key: key);

  @override
  _RestaurantWidgetState createState() {
    return _RestaurantWidgetState();
  }
}

class _RestaurantWidgetState extends StateMVC<RestaurantWidget> {
  RestaurantController _con;
  List<String> selectedCategories;

  _RestaurantWidgetState() : super(RestaurantController()) {
    _con = controller;
  }

  @override
  void initState() {
    _con.restaurant = widget.routeArgument.param as Restaurant;
    _con.listenForGalleries(_con.restaurant.id);
    _con.listenForFeaturedFoods(_con.restaurant.id);
    _con.listenForRestaurantReviews(id: _con.restaurant.id);

    _con.listenForCategories(_con.restaurant.id);
    _con.listenForFoods(_con.restaurant.id);
    selectedCategories = ['0'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _con.scaffoldKey,
        body: RefreshIndicator(
          onRefresh: _con.refreshRestaurant,
          child: _con.restaurant == null
              ? CircularLoadingWidget(height: 500)
              : Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    CustomScrollView(
                      primary: true,
                      shrinkWrap: false,
                      slivers: <Widget>[
                        //
                        // SILVERAPPBAR
                        //

//                         SliverAppBar(
//                           backgroundColor: Theme.of(context).accentColor.withOpacity(0.9),
//                           expandedHeight: 300,
//                           elevation: 0,
// //                          iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
//                           automaticallyImplyLeading: false,
//                           leading: new IconButton(
//                             icon: new Icon(Icons.sort, color: Theme.of(context).primaryColor),
//                             onPressed: () => widget.parentScaffoldKey.currentState.openDrawer(),
//                           ),
//                           flexibleSpace: FlexibleSpaceBar(
//                             collapseMode: CollapseMode.parallax,
//                             background: Hero(
//                               tag: (widget?.routeArgument?.heroTag ?? '') + _con.restaurant.id,
//                               child: CachedNetworkImage(
//                                 fit: BoxFit.cover,
//                                 imageUrl: _con.restaurant.image.url,
//                                 placeholder: (context, url) => Image.asset(
//                                   'assets/img/loading.gif',
//                                   fit: BoxFit.cover,
//                                 ),
//                                 errorWidget: (context, url, error) => Icon(Icons.error),
//                               ),
//                             ),
//                           ),
//                         ),

                        SliverToBoxAdapter(
                          /// _buildCarousel() in your case....
                          child: SingleChildScrollView(
                            //space for the header
                            child: TestPage(
                              resName: _con.restaurant.name,
                              resimage: _con.restaurant.image.url,
                              deliveryTime: _con.restaurant.distance,
                              rating: _con.restaurant.rate,
                              openTime: _con.restaurant.distance,
                            ),
                          ),
                        ),

                        //MenuWidget(),
                        // ListTile(
                        //   dense: true,
                        //   contentPadding: EdgeInsets.symmetric(
                        //       horizontal: 20, vertical: 10),
                        //   leading: Icon(
                        //     Icons.subject,
                        //     color: Theme.of(context).hintColor,
                        //   ),
                        //   title: Text(
                        //     S.of(context).all_menu,
                        //     style: Theme.of(context).textTheme.headline4,
                        //   ),
                        //   subtitle: Text(
                        //     S.of(context).clickOnTheFoodToGetMoreDetailsAboutIt,
                        //     maxLines: 2,
                        //     style: Theme.of(context).textTheme.caption,
                        //   ),
                        // ),

                        // _con.categories.isEmpty
                        //     ? SizedBox(height: 90)
                        //     : Container(
                        //         height: 90,
                        //         child: ListView(
                        //           primary: false,
                        //           shrinkWrap: true,
                        //           scrollDirection: Axis.horizontal,
                        //           children: List.generate(
                        //               _con.categories.length, (index) {
                        //             var _category =
                        //                 _con.categories.elementAt(index);
                        //             var _selected = this
                        //                 .selectedCategories
                        //                 .contains(_category.id);
                        //             return Padding(
                        //               padding: const EdgeInsetsDirectional.only(
                        //                   start: 20),
                        //               child: RawChip(
                        //                 elevation: 0,
                        //                 // Category name here
                        //                 label: Text(_category.name),
                        //                 labelStyle: _selected
                        //                     ? Theme.of(context)
                        //                         .textTheme
                        //                         .bodyText2
                        //                         .merge(TextStyle(
                        //                             color: Theme.of(context)
                        //                                 .primaryColor))
                        //                     : Theme.of(context)
                        //                         .textTheme
                        //                         .bodyText2,
                        //                 padding: EdgeInsets.symmetric(
                        //                     horizontal: 12, vertical: 15),
                        //                 backgroundColor: Theme.of(context)
                        //                     .focusColor
                        //                     .withOpacity(0.1),
                        //                 selectedColor:
                        //                     Theme.of(context).accentColor,
                        //                 selected: _selected,
                        //                 //shape: StadiumBorder(side: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.05))),
                        //                 showCheckmark: false,
                        //                 avatar: (_category.id == '0')
                        //                     ? null
                        //                     //if it's a all then no avatar image
                        //                     : (_category.image.url
                        //                             .toLowerCase()
                        //                             .endsWith('.svg')
                        //                         ? SvgPicture.network(
                        //                             _category.image.url,
                        //                             color: _selected
                        //                                 ? Theme.of(context)
                        //                                     .primaryColor
                        //                                 : Theme.of(context)
                        //                                     .accentColor,
                        //                           )
                        //                         : CachedNetworkImage(
                        //                             fit: BoxFit.cover,
                        //                             imageUrl:
                        //                                 _category.image.icon,
                        //                             placeholder:
                        //                                 (context, url) =>
                        //                                     Image.asset(
                        //                               'assets/img/loading.gif',
                        //                               fit: BoxFit.cover,
                        //                             ),
                        //                             errorWidget:
                        //                                 (context, url, error) =>
                        //                                     Icon(Icons.error),
                        //                           )),
                        //                 onSelected: (bool value) {
                        //                   setState(() {
                        //                     if (_category.id == '0') {
                        //                       this.selectedCategories = ['0'];
                        //                     } else {
                        //                       this
                        //                           .selectedCategories
                        //                           .removeWhere((element) =>
                        //                               element == '0');
                        //                     }
                        //                     if (value) {
                        //                       this
                        //                           .selectedCategories
                        //                           .add(_category.id);
                        //                     } else {
                        //                       this
                        //                           .selectedCategories
                        //                           .removeWhere((element) =>
                        //                               element == _category.id);
                        //                     }
                        //                     _con.selectCategory(
                        //                         this.selectedCategories);
                        //                   });
                        //                 },
                        //               ),
                        //             );
                        //           }),
                        //         ),
                        //       ),
                        // _con.foods.isEmpty
                        //     ? CircularLoadingWidget(height: 250)
                        //     : ListView.separated(
                        //         scrollDirection: Axis.vertical,
                        //         shrinkWrap: true,
                        //         primary: false,
                        //         itemCount: _con.foods.length,
                        //         separatorBuilder: (context, index) {
                        //           return SizedBox(height: 10);
                        //         },
                        //         itemBuilder: (context, index) {
                        //           return FoodItemWidget(
                        //             heroTag: 'menu_list',
                        //             food: _con.foods.elementAt(index),
                        //           );
                        //         },
                        //       ),

                        //

                        SliverToBoxAdapter(
                          child: Wrap(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 20, left: 20, bottom: 10, top: 25),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                        _con.restaurant?.name ?? '',
                                        overflow: TextOverflow.fade,
                                        softWrap: false,
                                        maxLines: 2,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline3,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 32,
                                      child: Chip(
                                        padding: EdgeInsets.all(0),
                                        label: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(_con.restaurant.rate,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1
                                                    .merge(TextStyle(
                                                        color: Theme.of(context)
                                                            .primaryColor))),
                                            Icon(
                                              Icons.star_border,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              size: 16,
                                            ),
                                          ],
                                        ),
                                        backgroundColor: Theme.of(context)
                                            .accentColor
                                            .withOpacity(0.9),
                                        shape: StadiumBorder(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  SizedBox(width: 20),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 3),
                                    decoration: BoxDecoration(
                                        color: _con.restaurant.closed
                                            ? Colors.grey
                                            : Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(24)),
                                    child: _con.restaurant.closed
                                        ? Text(
                                            S.of(context).closed,
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption
                                                .merge(TextStyle(
                                                    color: Theme.of(context)
                                                        .primaryColor)),
                                          )
                                        : Text(
                                            S.of(context).open,
                                            style: Theme.of(context)
                                                .textTheme
                                                .caption
                                                .merge(TextStyle(
                                                    color: Theme.of(context)
                                                        .primaryColor)),
                                          ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(child: SizedBox(height: 0)),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 3),
                                    decoration: BoxDecoration(
                                        color:
                                            Helper.canDelivery(_con.restaurant)
                                                ? Colors.green
                                                : Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(24)),
                                    child: Text(
                                      Helper.getDistance(
                                          _con.restaurant.distance,
                                          Helper.of(context).trans(
                                              setting.value.distanceUnit)),
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .merge(TextStyle(
                                              color: Theme.of(context)
                                                  .primaryColor)),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 12),
                                child: Helper.applyHtml(
                                    context, _con.restaurant.description),
                              ),

                              //
                              // IMAGE SLIDESHOW
                              //

                              ImageThumbCarouselWidget(
                                  galleriesList: _con.galleries),

                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: ListTile(
                                  dense: true,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 0),
                                  leading: Icon(
                                    Icons.stars,
                                    color: Theme.of(context).hintColor,
                                  ),
                                  title: Text(
                                    S.of(context).information,
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 12),
                                child: Helper.applyHtml(
                                    context, _con.restaurant.information),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                color: Theme.of(context).primaryColor,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                        currentUser.value.apiToken != null
                                            ? S
                                                .of(context)
                                                .forMoreDetailsPleaseChatWithOurManagers
                                            : S
                                                .of(context)
                                                .signinToChatWithOurManagers,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 3,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                    ),
                                    SizedBox(width: 10),

                                    //
                                    // CHAT
                                    //

                                    // SizedBox(
                                    //   width: 42,
                                    //   height: 42,
                                    //   child: FlatButton(
                                    //     padding: EdgeInsets.all(0),
                                    //     disabledColor: Theme.of(context)
                                    //         .focusColor
                                    //         .withOpacity(0.5),
                                    //     onPressed:
                                    //         currentUser.value.apiToken != null
                                    //             ? () {
                                    //                 Navigator.of(context).pushNamed(
                                    //                     '/Chat',
                                    //                     arguments: RouteArgument(
                                    //                         param: new Conversation(
                                    //                             _con.restaurant.users.map((e) {
                                    //                               e.image = _con
                                    //                                   .restaurant
                                    //                                   .image;
                                    //                               return e;
                                    //                             }).toList(),
                                    //                             name: _con.restaurant.name)));
                                    //               }
                                    //             : null,
                                    //     child: Icon(
                                    //       Icons.chat,
                                    //       color: Theme.of(context).primaryColor,
                                    //       size: 24,
                                    //     ),
                                    //     color: Theme.of(context)
                                    //         .accentColor
                                    //         .withOpacity(0.9),
                                    //     shape: StadiumBorder(),
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                color: Theme.of(context).primaryColor,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                        _con.restaurant.address ?? '',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    SizedBox(
                                      width: 42,
                                      height: 42,
                                      child: FlatButton(
                                        padding: EdgeInsets.all(0),
                                        onPressed: () {
                                          Navigator.of(context).pushNamed(
                                              '/Pages',
                                              arguments: new RouteArgument(
                                                  id: '1',
                                                  param: _con.restaurant));
                                        },
                                        child: Icon(
                                          Icons.directions,
                                          color: Theme.of(context).primaryColor,
                                          size: 24,
                                        ),
                                        color: Theme.of(context)
                                            .accentColor
                                            .withOpacity(0.9),
                                        shape: StadiumBorder(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Container(
                              //   padding: const EdgeInsets.symmetric(
                              //       horizontal: 20, vertical: 20),
                              //   margin: const EdgeInsets.symmetric(vertical: 5),
                              //   color: Theme.of(context).primaryColor,
                              //   child: Row(
                              //     crossAxisAlignment: CrossAxisAlignment.start,
                              //     children: <Widget>[
                              //       Expanded(
                              //         child: Text(
                              //           '${_con.restaurant.phone} \n${_con.restaurant.mobile}',
                              //           overflow: TextOverflow.ellipsis,
                              //           style: Theme.of(context)
                              //               .textTheme
                              //               .bodyText1,
                              //         ),
                              //       ),
                              //       SizedBox(width: 10),
                              //       SizedBox(
                              //         width: 42,
                              //         height: 42,
                              //         child: FlatButton(
                              //           padding: EdgeInsets.all(0),
                              //           onPressed: () {
                              //             launch(
                              //                 "tel:${_con.restaurant.mobile}");
                              //           },
                              //           child: Icon(
                              //             Icons.call,
                              //             color: Theme.of(context).primaryColor,
                              //             size: 24,
                              //           ),
                              //           color: Theme.of(context)
                              //               .accentColor
                              //               .withOpacity(0.9),
                              //           shape: StadiumBorder(),
                              //         ),
                              //       ),
                              //     ],
                              //   ),
                              // ),

                              //
                              // FEATUREFOOD
                              //

                              // _con.featuredFoods.isEmpty
                              //     ? SizedBox(height: 0)
                              //     : Padding(
                              //         padding: const EdgeInsets.symmetric(
                              //             horizontal: 20),
                              //         child: ListTile(
                              //           dense: true,
                              //           contentPadding:
                              //               EdgeInsets.symmetric(vertical: 0),
                              //           leading: Icon(
                              //             Icons.restaurant,
                              //             color: Theme.of(context).hintColor,
                              //           ),
                              //           title: Text(
                              //             S.of(context).featured_foods,
                              //             style: Theme.of(context)
                              //                 .textTheme
                              //                 .headline4,
                              //           ),
                              //         ),
                              //       ),
                              // _con.featuredFoods.isEmpty
                              //     ? SizedBox(height: 0)
                              //     : ListView.separated(
                              //         padding:
                              //             EdgeInsets.symmetric(vertical: 10),
                              //         scrollDirection: Axis.vertical,
                              //         shrinkWrap: true,
                              //         primary: false,
                              //         itemCount: _con.featuredFoods.length,
                              //         separatorBuilder: (context, index) {
                              //           return SizedBox(height: 10);
                              //         },
                              //         itemBuilder: (context, index) {
                              //           return FoodItemWidget(
                              //             heroTag: 'details_featured_food',
                              //             food: _con.featuredFoods
                              //                 .elementAt(index),
                              //           );
                              //         },
                              //       ),
                              // SizedBox(height: 100),

                              //
                              // REVIEW
                              //

                              // _con.reviews.isEmpty
                              //     ? SizedBox(height: 5)
                              //     : Padding(
                              //         padding: const EdgeInsets.symmetric(
                              //             vertical: 10, horizontal: 20),
                              //         child: ListTile(
                              //           dense: true,
                              //           contentPadding:
                              //               EdgeInsets.symmetric(vertical: 0),
                              //           leading: Icon(
                              //             Icons.recent_actors,
                              //             color: Theme.of(context).hintColor,
                              //           ),
                              //           title: Text(
                              //             S.of(context).what_they_say,
                              //             style: Theme.of(context)
                              //                 .textTheme
                              //                 .headline4,
                              //           ),
                              //         ),
                              //       ),
                              // _con.reviews.isEmpty
                              //     ? SizedBox(height: 5)
                              //     : Padding(
                              //         padding: const EdgeInsets.symmetric(
                              //             horizontal: 20, vertical: 10),
                              //         child: ReviewsListWidget(
                              //             reviewsList: _con.reviews),
                              //       ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 32,
                      right: 20,
                      child: ShoppingCartFloatButtonWidget(
                          iconColor: Theme.of(context).primaryColor,
                          labelColor: Theme.of(context).hintColor,
                          routeArgument: RouteArgument(
                              id: '0',
                              param: _con.restaurant.id,
                              heroTag: 'home_slide')),
                    ),
                  ],
                ),
        ));
  }
}
