import 'package:flutter/material.dart';

import 'login_page.dart';

class SplashPage extends StatefulWidget {
  static const routeName = '/splash_page';

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return LoginPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/mantap28cell.png", scale: 1.3,),
            //  SizedBox(height: 00.0),
            Text(
              'MANTAP 28 CELL',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!  
                  .copyWith(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}