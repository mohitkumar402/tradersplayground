import 'package:flutter/material.dart';
import '../models/stock_model.dart';

class TradePage extends StatefulWidget {
  final Stock stock;

  const TradePage({super.key, required this.stock});

  @override
  TradePageState createState() => TradePageState();
}

class TradePageState extends State<TradePage> {
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  bool isLimitOrder = false; // Toggle between Market & Limit Order

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Trade ${widget.stock.name}")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Stock: ${widget.stock.name}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Current Price: \$${widget.stock.price}",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),

            // Quantity Input
            TextField(
              controller: quantityController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Quantity",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),

            // Toggle Between Market & Limit Order
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Limit Order?", style: TextStyle(fontSize: 16)),
                Switch(
                  value: isLimitOrder,
                  onChanged: (value) {
                    setState(() => isLimitOrder = value);
                  },
                ),
              ],
            ),

            // Limit Price Input (Only if Limit Order is Selected)
            if (isLimitOrder)
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  controller: priceController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Limit Price",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

            SizedBox(height: 20),

            // Buy & Sell Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {
                    _placeOrder("BUY");
                  },
                  child: Text("Buy"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    _placeOrder("SELL");
                  },
                  child: Text("Sell"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _placeOrder(String orderType) {
    String quantity = quantityController.text.trim();
    String price = priceController.text.trim();

    if (quantity.isEmpty) {
      _showError("Please enter quantity.");
      return;
    }

    if (isLimitOrder && price.isEmpty) {
      _showError("Please enter limit price.");
      return;
    }

    // ✅ Order Successfully Placed
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("$orderType Order Placed: ${widget.stock.name}")),
    );
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message, style: TextStyle(color: Colors.red))),
    );
  }
}
