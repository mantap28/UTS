import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'home.dart';

class ListHp extends StatelessWidget {
static const routeName = '/list_hp';
  final List Merek = [
"Samsung",
"Xiaomi",
"iPhone",
"Oppo",
"Nokia",
"inFinix",
"Vivo",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12 ,
      appBar: AppBar( 
        title: Center(child: Text("mantap28cell",style: TextStyle(fontSize: 40),)),
      ),
      body:ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Home(),
                  ),
              );
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                  child: Text(Merek[index], style: TextStyle(fontSize: 40)),
              ),
            )
          );
  },
            itemCount: Merek.length,
  )
      );
  }
}