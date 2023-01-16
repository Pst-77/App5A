import 'package:flutter/material.dart';
import 'package:flutter_layaout/buttonsections.dart';
import 'package:flutter_layaout/textsections.dart';
import 'package:flutter_layaout/titlesection.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          
          elevation: 0,
          title: const Text('Flutter layout demo'),
        ),
        body: Column (
            children:  [ 
            Image.asset(
              'assets/lake.jpg',
              width: 600,
              height: 240,
              fit:BoxFit.cover),
            const titleSection(),
            
            const buttonsection(),
            const textsections(),
            const Text('Crystian Ramirez-5:30hrs'),
          ],
        ),
      ),
    );
  }
}