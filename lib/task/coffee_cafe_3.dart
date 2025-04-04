import 'package:flutter/material.dart';

class Pagethird extends StatefulWidget {
  const Pagethird({super.key});

  @override
  State<Pagethird> createState() => _PagethirdState();
}

class _PagethirdState extends State<Pagethird> {
  final List<Map<String, dynamic>> data = List.generate(
    7,
        (index) => {
      'id': 1100 + index,
      'name': ['Ram', 'monu', 'seeta', 'radha', 'akash', 'kashish', 'pritam'][index],
      'freight': '\$${(100 + index * 100).toStringAsFixed(2)}',
      'shippedDate': ['11/11/20', '6/16/20', '3/8/20', '8/27/20', '11/11/20', '6/16/20', '11/11/20'][index],
      'img': 'https://i.pravatar.cc/40?img=${index + 1}'
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page Third"), backgroundColor: Colors.blue),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columnSpacing: 20,
          columns: ['Dealer', 'ID', 'Name', 'Freight', 'Shipped Date']
              .map((title) => DataColumn(label: Text(title, style: const TextStyle(fontWeight: FontWeight.bold))))
              .toList(),
          rows: data
              .map((row) => DataRow(cells: [
            DataCell(CircleAvatar(backgroundImage: NetworkImage(row['img']))),
            ...['id', 'name', 'freight', 'shippedDate'].map((key) => DataCell(Text(row[key].toString())))
          ]))
              .toList(),
        ),
      ),
    );
  }
}
