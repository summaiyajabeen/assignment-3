import 'package:flutter/material.dart';

import 'home2.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
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
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Username",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text(
                'History',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
            ),
            Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('2.jpg'))),
            ),
            Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('2.jpg'))),
            ),
            Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('2.jpg'))),
            ),
            Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('2.jpg'))),
            ),
            Container(
              height: 40,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => home2()));
                },
                child: Text(
                  ' Back To Home',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
