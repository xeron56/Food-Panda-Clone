import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/elements/FilterWidget.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../generated/l10n.dart';
import '../elements/SearchWidget.dart';

class SearchBarWidget extends StatelessWidget {
  final ValueChanged onClickFilter;

  const SearchBarWidget({Key key, this.onClickFilter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push(SearchModal());
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            SizedBox(width: 5),
            InkWell(
              onTap: () {
                onClickFilter('e');
                // going to the search function
              },

              // onTap: () {
              //   showCupertinoModalBottomSheet(
              //     context: context,
              //     builder: (context) => Container(
              //       child: FilterWidget('e'),
              //     ),
              //   );
              // },


              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x26000000),
                      blurRadius: 12,
                      offset: Offset(0, 0),
                    ),
                  ],
                  color: Color(0xffff4200),
                ),
                padding: const EdgeInsets.all(13),
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
                        "https://resource-hosting.s3.us-west-1.amazonaws.com/fl-FwJET-[object Object]",
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
        // child: Container(
        //   padding: EdgeInsets.all(9),
        //   decoration: BoxDecoration(
        //       color: Colors.transparent,
        //       border: Border.all(
        //         color: Theme.of(context).focusColor.withOpacity(0.2),
        //       ),
        //       borderRadius: BorderRadius.circular(4)),
        //   child: Row(
        //     children: <Widget>[
        //       Padding(
        //         padding: const EdgeInsets.only(right: 12, left: 0),
        //         child: Icon(Icons.search, color: Theme.of(context).accentColor),
        //       ),
        //       Expanded(
        //         child: Text(
        //           S.of(context).search_for_restaurants_or_foods,
        //           maxLines: 1,
        //           softWrap: false,
        //           overflow: TextOverflow.fade,
        //           style: Theme.of(context).textTheme.caption.merge(TextStyle(fontSize: 12)),
        //         ),
        //       ),
        //       SizedBox(width: 8),
        //       InkWell(
        //         onTap: () {
        //           onClickFilter('e');
        //           // going to the search function
        //         },
        //         child: Container(
        //           padding: const EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.all(Radius.circular(5)),
        //             color: Theme.of(context).focusColor.withOpacity(0.1),
        //           ),
        //           child: Wrap(
        //             crossAxisAlignment: WrapCrossAlignment.center,
        //             spacing: 4,
        //             children: [
        //               Text(
        //                 S.of(context).filter,
        //                 style: TextStyle(color: Theme.of(context).hintColor),
        //               ),
        //               Icon(
        //                 Icons.filter_list,
        //                 color: Theme.of(context).hintColor,
        //                 size: 21,
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),

        );
  }
}
