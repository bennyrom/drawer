import 'package:clase4/pages/paginaUno.dart';
import 'package:clase4/pages/statefullPage.dart';
import 'package:clase4/pages/statelessPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Cambiando entre páginas'),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
            ),
            ListTile(
              title: Text('Ir a Pagina 1',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
               style: TextStyle(fontWeight: FontWeight.w900)
               ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => PaginaUno()));
              },
            ),
            ListTile(
              title: Text('Ir a Practica StatelessWidget',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
               style: TextStyle(fontWeight: FontWeight.w900)
              
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => Clase1()));
              },
            ),
            ListTile(
              title: Text('Ir a Practica StatefullWidget',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
             
               style: TextStyle(fontWeight: FontWeight.w900)
              
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => MistateFull()));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cambiando entre páginas"),
      ),
      body: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[

                
                FlatButton(
                  
                  color: Colors.blue.shade900,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(10.0),
                  child: Text("Ir a Pagina 1"),


                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),

                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => PaginaUno()));
                  },
                ),
                FlatButton(
                  color: Colors.redAccent.shade700,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(10.0),
                  child: Text("Ir a Practica StatelessWidget"),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => Clase1()));
                  },
                ),
                FlatButton(
                  color: Colors.orange.shade900,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(10.0),
                  child: Text("Ir a Practica StatefullWidget"),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => MistateFull()));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}










