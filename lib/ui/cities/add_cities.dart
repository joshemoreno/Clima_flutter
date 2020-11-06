import 'dart:convert';

import 'package:clima/data/constants.dart';
import 'package:clima/model/city.dart';
// import 'package:clima/ui/cities/cities_page.dart';
import 'package:clima/ui/common/debouncer.dart';
import 'package:clima/ui/common/header.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddCitiesPage extends StatefulWidget {
  @override
  _AddCitiesPageState createState() => _AddCitiesPageState();
}

class _AddCitiesPageState extends State<AddCitiesPage> {
  final debouncer = Debouncer();
  List<City> cities = [];

  void onChangeText(String text) {
    debouncer.run(() {
      requestSearch(text);
    });
  }

  void requestSearch(String text) async {
    final url = '${api}search/?query=$text';
    final response = await http.get(url);
    final data = jsonDecode(response.body) as List;
    setState(() {
      cities = data.map((e) => City.fromJson(e)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Header(
              title: 'Agregar ciudad',
            ),
            const SizedBox(
              height: 30,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: TextField(
                onChanged: onChangeText,
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  filled: true,
                  hintText: 'Buscar ciudad',
                  fillColor: Colors.grey[10],
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: cities.length,
                  itemBuilder: (context, index) {
                    final city = cities[index];
                    return ListTile(
                      title: Text(city.title),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
