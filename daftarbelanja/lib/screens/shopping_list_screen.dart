import 'package:flutter/material.dart';
import 'package:daftarbelanja/services/shopping_services.dart';

class ShoppingListScreen extends StatefulWidget {
  const ShoppingListScreen({super.key});

  @override
  State<ShoppingListScreen> createState() => _ShoppingListScreenState();
}

class _ShoppingListScreenState extends State<ShoppingListScreen> {
  final TextEditingController _controller = TextEditingController();
  final ShoppingService _shoppingService = ShoppingService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Belanja'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  controller: _controller,
                  decoration:
                      const InputDecoration(hintText: "Masukkan Nama Barang"),
                )),
                IconButton(
                    onPressed: () {
                      _shoppingService.addShoppingItem(_controller.text);
                    },
                    icon: Icon(Icons.add))
              ],
            ),
          )
        ],
      ),
    );
  }
}
