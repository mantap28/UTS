import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
body: Center(
  child:   Column(children: [
  SizedBox(height: 70,),
     Image.asset("assets/images/mantap28cell.png", scale: 1.3,),
  
      Text(
  
             'NOT FOUND 404 !',
  
                style: Theme.of(context)
  
                    .textTheme
  
                    .headlineMedium!  
  
                    .copyWith(color: Colors.black),
  
              )
  
  ]),
),
    );
  }
}