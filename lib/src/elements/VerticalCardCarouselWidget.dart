import 'package:flutter/material.dart';

import '../elements/CardsCarouselLoaderWidget.dart';
import '../models/restaurant.dart';
import '../models/route_argument.dart';
import 'CardWidget.dart';

// ignore: must_be_immutable
class VerticalCardCarouselWidget extends StatefulWidget {
  List<Restaurant> restaurantsList;
  String heroTag;
  String direction;

  VerticalCardCarouselWidget({Key key, this.restaurantsList, this.heroTag, this.direction}) : super(key: key);

  @override
  _VerticalCardCarouselWidgetState createState() => _VerticalCardCarouselWidgetState();
}

class _VerticalCardCarouselWidgetState extends State<VerticalCardCarouselWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.restaurantsList.isEmpty
        ? CardsCarouselLoaderWidget()
        : Container(
            height: 288,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: widget.restaurantsList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    //res retails
                    Navigator.of(context).pushNamed('/Details',
                        arguments: RouteArgument(
                          id: '0',
                          param: widget.restaurantsList.elementAt(index).id,
                          heroTag: widget.heroTag,
                        ));
                  },
                  //sending all res data to tha card widget
                  child: CardWidget(restaurant: widget.restaurantsList.elementAt(index), heroTag: widget.heroTag),
                );
              },
            ),
          );
  }
}
