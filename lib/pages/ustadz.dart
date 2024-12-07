import 'package:flutter/material.dart';

class UstadzPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Ustadz'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text('Ust. Hanan Attaki'),
              subtitle: Text('Tauhid - Bandung'),
              trailing: ElevatedButton(
                onPressed: () {},
                child: Text('Book Now'),
              ),
            ),
          ),
          // Card untuk Ust. Abdul Somad dan Ust. Yusuf Mansur
        ],
      ),
    );
  }
}