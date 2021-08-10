import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../generated/l10n.dart';
import '../controllers/filter_controller.dart';
import '../elements/CircularLoadingWidget.dart';
import '../models/filter.dart';

class FilterWidget extends StatefulWidget {
  final ValueChanged<Filter> onFilter;

  FilterWidget({Key key, this.onFilter}) : super(key: key);

  @override
  _FilterWidgetState createState() => _FilterWidgetState();
}

class _FilterWidgetState extends StateMVC<FilterWidget> {
  FilterController _con;

  _FilterWidgetState() : super(FilterController()) {
    _con = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(S.of(context).filter),
                  MaterialButton(
                    onPressed: () {
                      _con.clearFilter();
                    },
                    child: Text(
                      S.of(context).clear,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                primary: true,
                shrinkWrap: true,
                children: <Widget>[
                  ExpansionTile(
                    title: Text(S.of(context).delivery_or_pickup),
                    children: [
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: _con.filter?.delivery ?? false,
                        onChanged: (value) {
                          setState(() {
                            _con.filter?.delivery = true;
                          });
                        },
                        title: Text(
                          S.of(context).delivery,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                          maxLines: 1,
                        ),
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: _con.filter?.delivery ?? false ? false : true,
                        onChanged: (value) {
                          setState(() {
                            _con.filter?.delivery = false;
                          });
                        },
                        title: Text(
                          S.of(context).pickup,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                          maxLines: 1,
                        ),
                      ),
                    ],
                    initiallyExpanded: true,
                  ),
                  ExpansionTile(
                    title: Text(S.of(context).opened_restaurants),
                    children: [
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: _con.filter?.open ?? false,
                        onChanged: (value) {
                          setState(() {
                            _con.filter?.open = value;
                          });
                        },
                        title: Text(
                          S.of(context).open,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                          maxLines: 1,
                        ),
                      ),
                    ],
                    initiallyExpanded: true,
                  ),
                  _con.cuisines.isEmpty
                      ? CircularLoadingWidget(height: 100)
                      : ExpansionTile(
                          title: Text(S.of(context).cuisines),
                          children:
                              List.generate(_con.cuisines.length, (index) {
                            return CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.trailing,
                              value: _con.cuisines.elementAt(index).selected,
                              onChanged: (value) {
                                _con.onChangeCuisinesFilter(index);
                              },
                              title: Text(
                                _con.cuisines.elementAt(index).name,
                                overflow: TextOverflow.fade,
                                softWrap: false,
                                maxLines: 1,
                              ),
                            );
                          }),
                          initiallyExpanded: true,
                        ),
                ],
              ),
            ),
            SizedBox(height: 15),
            // FlatButton(
            // onPressed: () {
            //   _con.saveFilter().whenComplete(() {
            //     widget.onFilter(_con.filter);
            //   });
            // },
            //   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            //   color: Theme.of(context).accentColor,
            //   shape: StadiumBorder(),
            //   child: Text(
            //     S.of(context).apply_filters,
            //     textAlign: TextAlign.start,
            //     style: TextStyle(color: Theme.of(context).primaryColor),
            //   ),
            // ),
            Container(
              child: Container(
                child: Container(
                  child: Row(
                    children: [
                      FlatButton(
                        onPressed: () {
                          _con.clearFilter();
                        },
                        child: Text(
                          "Clear all",
                        ),
                        textColor: Color(
                          0xffff4200,
                        ),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                        ),
                        height: 51,
                        minWidth: 118,
                      ),
                      SizedBox(
                        width: 10,
                      ),

                      //
                      // FILTER APPLY BOTTON
                      //

                      GestureDetector(
                          onTap: () {
                            _con.saveFilter().whenComplete(() {
                              widget.onFilter(_con.filter);
                            });
                          },
                          child: Container(
                            child: Container(
                              child: Row(
                                children: [
                                  Container(
                                    child: SizedBox(
                                      child: Text(
                                        "99",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Poppins",
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      width: 18,
                                    ),
                                    padding: EdgeInsets.all(
                                      7,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        20,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Apply  Filter",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Poppins",
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 43,
                                vertical: 10,
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
                          ))
                    ],
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              ),
              width: MediaQuery.of(context).size.width,
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
            SizedBox(height: 15)
          ],
        ),
      ),
    );
  }
}
