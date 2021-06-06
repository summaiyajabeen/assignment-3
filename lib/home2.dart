import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: home2(),
    );
  }
}

class home2 extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              child: Container(
                padding: const EdgeInsets.only(left: 60, right: 60),
                child: Center(
                  child: Text(
                    'Ecom App UI',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[Icon(Icons.notifications)],
              ),
            )
          ],
        ),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('3.jpg'))),
            ),
            Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('3.jpg'))),
            ),
            Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('3.jpg'))),
            ),
          ],
        ),
      ),
    );
  }
}
