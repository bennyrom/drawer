import 'package:flutter/material.dart';

class PaginaUno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página Uno"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(
          child: Text("página uno",
              overflow: TextOverflow.ellipsis,
               style: TextStyle(fontWeight: FontWeight.w900)
          ),
        ),
      ),
    );
  }
}
