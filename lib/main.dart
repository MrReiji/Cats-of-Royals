import 'package:flutter/material.dart';
import 'package:kotki/CatPicture.dart';
import 'package:kotki/network_request.dart';
import 'CatFrame.dart';
import 'BreedsFrame.dart';
import 'FavFrame.dart';
import 'Grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cats of Royals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // late Future<CatPicture> futureCatPicture;

  // @override
  // void initState() {
  //   super.initState();
  //   futureCatPicture = fetchCatPicture();
  // }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cats of Royals"),
      ),
      body: Center(
        child: <Widget>[
          CatFrame(),
          BreedsFrame(),
          FavouritesFrame(),
        ].elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Kotek',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Rasy',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Ulubione',
          ),
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
      ),
    );
  }
}
