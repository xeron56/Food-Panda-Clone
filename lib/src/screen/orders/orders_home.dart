import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/elements/ShoppingCartButtonWidget.dart';
import 'package:food_delivery_app/src/screen/orders/order_ongoing.dart';
import 'package:food_delivery_app/src/screen/orders/order_scheduled.dart';



class OrderHome extends StatefulWidget {
  @override
  _OrderHomeState createState() => _OrderHomeState();
}

class _OrderHomeState extends State<OrderHome>
    with SingleTickerProviderStateMixin {
  TabController tb;

  @override
  void initState() {
    tb = TabController(initialIndex: 0, length: 4, vsync: this);
    super.initState();
  }

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
        body: NestedScrollView(
      physics: ClampingScrollPhysics(),
      headerSliverBuilder: (context, value) {
        return [
          // SliverToBoxAdapter(
            
          //   child: SingleChildScrollView(
             
          //     child: TestPage(),
          //   ),
          // ),

          SliverToBoxAdapter(
              child: TabBar(
      
            isScrollable: true,
            labelColor: Colors.pink,
            unselectedLabelColor: Colors.black,
            controller: tb,
            tabs: <Widget>[
              Tab(
                child: Text("Ongoing"),
              ),
              Tab(
                child: Text("Scheduled"),
              ),
               Tab(
                child: Text("Delivered"),
              ),
              Tab(
                child: Text("Canceled"),
              ),
            ],
          )),
        ];
      },
      body: TabBarView(
        controller: tb,
        children: <Widget>[
       
          
          OnGoingOrder(),
          OrderScheduled(),
          OnGoingOrder(),
          OnGoingOrder(),
          
         
        ],
      ),
    ));
  }
}
