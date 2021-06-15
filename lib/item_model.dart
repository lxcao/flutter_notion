/*
 * @Author: clingxin
 * @Date: 2021-06-15 16:53:54
 * @LastEditors: clingxin
 * @LastEditTime: 2021-06-15 17:24:19
 * @FilePath: /flutter_notion/lib/item_model.dart
 */

class Item {
  final String name;
  final String category;
  final double price;
  final DateTime date;

  const Item({
    required this.name,
    required this.category,
    required this.price,
    required this.date,
  });
}
