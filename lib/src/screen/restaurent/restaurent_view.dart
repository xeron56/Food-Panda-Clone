import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/screen/restaurent/restaurent_menu.dart';
import 'package:food_delivery_app/src/screen/restaurent/test_page.dart';

class RestaurentView extends StatefulWidget {
  @override
  _RestaurentViewState createState() => _RestaurentViewState();
}

class _RestaurentViewState extends State<RestaurentView>
    with SingleTickerProviderStateMixin {
  TabController tb;

  @override
  void initState() {
    tb = TabController(initialIndex: 0, length: 9, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      physics: ClampingScrollPhysics(),
      headerSliverBuilder: (context, value) {
        return [
          SliverToBoxAdapter(
            /// _buildCarousel() in your case....
            child: SingleChildScrollView(
              //space for the header
              child: TestPage(),
            ),
          ),
// width: MediaQuery.of(context).size.width,
          //make silver to be a box adapter which has 10 tab
          SliverToBoxAdapter(
              child: TabBar(
            // make tab bar slide able
            isScrollable: true,
            labelColor: Colors.pink,
            unselectedLabelColor: Colors.black,
            controller: tb,
            tabs: <Widget>[
              Tab(
                child: Text("Popular"),
              ),
              Tab(
                child: Text("Buger"),
              ),
              Tab(
                child: Text("Cake & pastry"),
              ),
              Tab(
                child: Text("Sweets"),
              ),
              Tab(
                child: Text("Chiness"),
              ),
              Tab(
                child: Text("Chicken"),
              ),
              Tab(
                child: Text("Cock"),
              ),
              Tab(
                child: Text("Italian"),
              ),
              Tab(
                child: Text("Juice"),
              ),
            ],
          )),
        ];
      },
      body: TabBarView(
        controller: tb,
        children: <Widget>[
          // GridView.count(
          //   physics: NeverScrollableScrollPhysics(),
          //     crossAxisCount: 3,
          //     children: List.generate(10,
          //             (index) =>  Icon(Icons.grid_off)
          //     ).toList()
          // ),
          
          RestaurentMenu(),
          RestaurentMenu(),
          RestaurentMenu(),
          RestaurentMenu(),
          RestaurentMenu(),
          RestaurentMenu(),
          RestaurentMenu(),
          RestaurentMenu(),
          RestaurentMenu(),
          // GridView.count(
          //     physics: NeverScrollableScrollPhysics(),
          //     crossAxisCount: 3,
          //     children: List.generate(5,
          //             (index) =>  Icon(Icons.grid_on)
          //     ).toList()
          // ),
        ],
      ),
    ));
  }
}
