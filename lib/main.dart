// import 'package:currency_converter/page/currency_converter_material_page.dart';
import 'package:convert_currency/currency_converter_cupertino_page.dart';
import 'package:flutter/cupertino.dart';

import 'currency_converter_material_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp(key: ValueKey("7"),));
}

// material app

class MyApp extends StatelessWidget{
 const MyApp({super.key});


  @override
 Widget build(BuildContext context){
  // return Text('hello,world hii',textDirection: TextDirection.ltr,);
  return  MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: Text('hello!!!!'),
    home: CurrencyConverterMaterialPage(),
  );
 }
}

class myCupertinoApp extends StatelessWidget {
  const myCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
    debugShowCheckedModeBanner: false,
    // home: Text('hello!!!!'),
    home: CurrencyConverterCupertinoPage(),
  );
  }
}


