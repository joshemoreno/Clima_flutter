import 'package:clima/ui/common/header.dart';
import 'package:flutter/material.dart';
import 'add_cities.dart';

class CitiesPage extends StatelessWidget {
  void handelNAvigateTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => AddCitiesPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        splashColor: Colors.grey,
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        onPressed: () => handelNAvigateTap(context),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Header(
              title: 'Mis ciudades',
            ),
            Expanded(
              child: Center(
                child: Text(
                  'No tienes ciudades aún',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
