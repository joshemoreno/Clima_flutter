import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
            // color: Colors.reds,
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
                )
              ],
            ),
          ),
        ))
      ],
    ));
  }
}
