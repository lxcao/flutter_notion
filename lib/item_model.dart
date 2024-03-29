/*
 * @Author: clingxin
 * @Date: 2021-06-15 16:53:54
 * @LastEditors: clingxin
 * @LastEditTime: 2021-06-15 17:50:30
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

  factory Item.fromMap(Map<String, dynamic> map) {
    final properties = map['properties'] as Map<String, dynamic>;
    final nameList = (properties['Name']?['title'] ?? []) as List;
    final dateStr = properties['Date']?['date']?['start'];
    return Item(
      name: nameList.isNotEmpty ? nameList[0]['plain_text'] : '?',
      category: properties['Category']?['select']?['name'] ?? 'Any',
      price: (properties['Price']?['number'] ?? 0).toDouble(),
      date: dateStr != null ? DateTime.parse(dateStr) : DateTime.now(),
    );
  }
}
