import 'package:flutter/material.dart';

import '../elements/FoodsCarouselItemWidget.dart';
import '../elements/FoodsCarouselLoaderWidget.dart';
import '../models/food.dart';

class FoodsCarouselWidget extends StatelessWidget {
  
  //under variable which accept the list of foods data from the server
  final List<Food> foodsList;
  final String heroTag;

  FoodsCarouselWidget({Key key, this.foodsList, this.heroTag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return foodsList.isEmpty
        ? FoodsCarouselLoaderWidget()
        : Container(
            height: 210,
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
              itemCount: foodsList.length,
              itemBuilder: (context, index) {
                double _marginLeft = 0;
                (index == 0) ? _marginLeft = 20 : _marginLeft = 0;
                return FoodsCarouselItemWidget(
                  heroTag: heroTag,
                  marginLeft: _marginLeft,
                  food: foodsList.elementAt(index),
                );
              },
              scrollDirection: Axis.horizontal,
            ));
  }
}
