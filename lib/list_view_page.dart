import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  
  final List<Map<String, dynamic>> cartItems = [
    {
      'name': 'Macbook M3',
      'price': 2000.0,
      'quantity': 1,
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKAYcSNRJsZNwSeDnH1_UgujcKit7UwPe6uQ&s'
    },
    {
      'name': 'IPhone 13',
      'price': 900.0,
      'quantity': 3,
      'image': 'https://media.croma.com/image/upload/v1708670566/Croma%20Assets/Communication/Mobiles/Images/243459_5_r79sfo.png'
    },
    {
      'name': 'IPhone 16 ProMax',
      'price': 1500.0,
      'quantity': 2,
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJZjYDbAo3cjZWGXHMdCYosc5w1fZlqNQ6-Q&s'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(item['image']), 
              radius: 25, 
            ),
            title: Text(item['name']),
            subtitle: Text('Qty: ${item['quantity']}  \$${item['price']}'),
            trailing: IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                
              },
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total: \$${cartItems.fold(0.0, (total, item) => total + (item['price'] * item['quantity'])).toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
               
              },
              child: Text('Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}
