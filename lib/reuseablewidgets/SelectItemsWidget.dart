// import 'package:commodity/data/CommodityListModel.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';
//
//  SelectWidget (){
//     return MultiSelectCheckList(
//       maxSelectableCount: 5,
//       textStyles: const MultiSelectTextStyles(
//           selectedTextStyle: TextStyle(
//               color: Colors.white, fontWeight: FontWeight.bold)),
//       itemsDecoration: MultiSelectDecorations(
//           selectedDecoration:
//           BoxDecoration(color: Colors.indigo.withOpacity(0.8))),
//       listViewSettings: ListViewSettings(
//           separatorBuilder: (context, index) => const Divider(
//             height: 0,
//           )),
//     //  controller: _controller,
//       items: List.generate(
//           commodity.length,
//               (index) => CheckListCard(
//              ///// value: commodity[index].text,
//               title: Text(_items[index].title),
//               subtitle: Text(_items[index].subTitle),
//               selectedColor: Colors.white,
//               checkColor: Colors.indigo,
//               selected: index == 3,
//               enabled: !(index == 5),
//               checkBoxBorderSide:
//               const BorderSide(color: Colors.blue),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(5)))),
//       onChange: (allSelectedItems, selectedItem) {
//       },
//       onMaximumSelected: (allSelectedItems, selectedItem) {
//        // CustomSnackBar.showInSnackBar('The limit has been reached', context);
//       },
//     );
//   }