import 'package:flutter/material.dart';
import '../models/stock_model.dart';

class StockDetailsPage extends StatelessWidget {
  final Stock stock;

  const StockDetailsPage({super.key, required this.stock});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${stock.name} Details")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Stock: ${stock.name}", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text("Price: \$${stock.price}", style: TextStyle(fontSize: 20)),
            Text("Change: ${stock.change}%", style: TextStyle(fontSize: 18, color: stock.change > 0 ? Colors.green : Colors.red)),
            SizedBox(height: 20),
            Text("Additional details here..."),
          ],
        ),
      ),
    );
  }
}
