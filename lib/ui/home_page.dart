import 'package:clima/ui/cities/my_cities.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  void handelNAvigateTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => CitiesPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fill(
            child: Image.asset(
          'assets/background/welcome.jpg',
        )),
        SafeArea(
            child: Center(
          child: Container(
            // color: Colors.red,
            constraints: BoxConstraints(
              maxWidth: 250.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Image.asset(
                  'assets/icons/flutter_black.png',
                  height: 80,
                  width: 80,
                ),
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: Text(
                    'Hola,\nBienvenido',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'Agrega una nueva ciudad',
                    // textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 160,
                ),
                RaisedButton(
                  color: Colors.black,
                  textColor: Colors.white,
                  elevation: 200,
                  splashColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                  child: Text('Agragar ciudad'),
                  onPressed: () => handelNAvigateTap(context),
                ),
              ],
            ),
          ),
        ))
      ],
    ));
  }
}
