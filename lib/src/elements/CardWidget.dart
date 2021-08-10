import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../helpers/helper.dart';
import '../models/restaurant.dart';
import '../models/route_argument.dart';
import '../repository/settings_repository.dart';

// ignore: must_be_immutable
class CardWidget extends StatelessWidget {
  Restaurant restaurant;
  String heroTag;

  CardWidget({Key key, this.restaurant, this.heroTag}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 292,
      margin: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
              color: Theme.of(context).focusColor.withOpacity(0.1),
              blurRadius: 15,
              offset: Offset(0, 5)),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Image of the card
          Stack(
            fit: StackFit.loose,
            alignment: AlignmentDirectional.bottomStart,
            children: <Widget>[
              Hero(
                tag: this.heroTag + restaurant.id,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(1),
                      topRight: Radius.circular(1)),
                  child: CachedNetworkImage(
                    height: 190,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    imageUrl: restaurant.image.url,
                    placeholder: (context, url) => Image.asset(
                      'assets/img/loading.gif',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 150,
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                    decoration: BoxDecoration(
                        color: restaurant.closed ? Colors.grey : Colors.green,
                        borderRadius: BorderRadius.circular(24)),
                    child: restaurant.closed
                        ? Text(
                            S.of(context).closed,
                            style: Theme.of(context).textTheme.caption.merge(
                                TextStyle(
                                    color: Theme.of(context).primaryColor)),
                          )
                        : Text(
                            S.of(context).open,
                            style: Theme.of(context).textTheme.caption.merge(
                                TextStyle(
                                    color: Theme.of(context).primaryColor)),
                          ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                    decoration: BoxDecoration(
                        color: Helper.canDelivery(restaurant)
                            ? Colors.green
                            : Colors.orange,
                        borderRadius: BorderRadius.circular(24)),
                    child: Helper.canDelivery(restaurant)
                        ? Text(
                            S.of(context).delivery,
                            style: Theme.of(context).textTheme.caption.merge(
                                TextStyle(
                                    color: Theme.of(context).primaryColor)),
                          )
                        : Text(
                            S.of(context).pickup,
                            style: Theme.of(context).textTheme.caption.merge(
                                TextStyle(
                                    color: Theme.of(context).primaryColor)),
                          ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Text(
                      //   restaurant.name,
                      //   overflow: TextOverflow.fade,
                      //   softWrap: false,
                      //   style: Theme.of(context).textTheme.subtitle1,
                      // ),
                      // Text(
                      //   Helper.skipHtml(restaurant.description),
                      //   overflow: TextOverflow.fade,
                      //   softWrap: false,
                      //   style: Theme.of(context).textTheme.caption,
                      // ),
                      // SizedBox(height: 5),
                      // Row(
                      //   children: Helper.getStarsList(double.parse(restaurant.rate)),
                      // ),
                      Container(
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
                                      restaurant.name,
                                      style: TextStyle(
                                        color: Color(
                                          0xff202020,
                                        ),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Poppins",
                                      ),
                                    ),
                                    width: 200,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        /// Detected as Icon
                                        /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                        Image.network(
                                          "https://resource-hosting.s3.us-west-1.amazonaws.com/8CSzVmmT-[object Object]",
                                          width: 13,
                                          height: 13,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          restaurant.rate,
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
                                            fontWeight: FontWeight.w300,
                                            fontFamily: "Poppins",
                                          ),
                                          textAlign: TextAlign.center,
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
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        /// Detected as Icon
                                        /// FIXME: Check your design. this is an icon of node "Icons". we couldn't any matching flutter native icon, so we uploaded the asset to the cloud, load from it.
                                        Image.network(
                                          "https://resource-hosting.s3.us-west-1.amazonaws.com/F6TUqAyy-[object Object]",
                                          width: 13,
                                          height: 13,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Delivery",
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
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          restaurant.deliveryFee.toString(),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 0.5,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      color: Color(
                                        0xffc4c4c4,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
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
                                ],
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                              ),
                            ),
                          ],
                        ),
                        width: MediaQuery.of(context).size.width,
                      ),
                    ],
                  ),
                ),
                // SizedBox(width: 15),
                // Expanded(
                //   child: Column(
                //     children: <Widget>[
                //       FlatButton(
                //         padding: EdgeInsets.all(0),
                //         onPressed: () {
                //           Navigator.of(context).pushNamed('/Pages',
                //               arguments: new RouteArgument(
                //                   id: '1', param: restaurant));
                //         },
                //         child: Icon(Icons.directions,
                //             color: Theme.of(context).primaryColor),
                //         color: Theme.of(context).accentColor,
                //         shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(5)),
                //       ),
                //       restaurant.distance > 0
                //           ? Text(
                //               Helper.getDistance(
                //                   restaurant.distance,
                //                   Helper.of(context)
                //                       .trans(setting.value.distanceUnit)),
                //               overflow: TextOverflow.fade,
                //               maxLines: 1,
                //               softWrap: false,
                //             )
                //           : SizedBox(height: 0)
                //     ],
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
