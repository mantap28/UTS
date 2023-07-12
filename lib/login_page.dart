import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'list_hp.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key,});

static const routeName = '/login_page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12 ,
      appBar: AppBar(
        title: Center(child: Text('Sign In')),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 120, left: 120,),
              child: const TextField(
                decoration: InputDecoration(labelText: "Username"),
                
              ),
            ),Padding(
               padding: const EdgeInsets.only(right: 120, left: 120,),
              child: const TextField(
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
              ),
            ),
            SizedBox(height: 20,),
            TextButton(onPressed: () {
              setState(() {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ((context) => ListHp())));
              });
            }, child: Container(
              height: 30,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.blueGrey
              ),
              child: Center(child: Text("Login", style: TextStyle(color: Colors.white),)),
            ))
          ],
        ),
      ),
      );
  }
}