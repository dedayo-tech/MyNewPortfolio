import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('My Portfolio'),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: Column(children: [
          CircleAvatar(
            radius: 85,
            backgroundImage: AssetImage('assets/zuriimage.jpg'),
          ),
          SizedBox(height: 10),
          Text('Mobile Developer',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 50),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.account_circle, size: 30, color: Colors.white,),
                  SizedBox(width: 30,),
                  Text('ADEOGUN ADEDAYO',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                    ),),
                ],
              ),
              SizedBox(height: 20),
              Row(

                children: [
                  Icon(Icons.mail_outline, size: 30, color: Colors.white,),
                  SizedBox(width: 30,),
                  Text('adedayoadeogun@gmail.com',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.phone, size: 30, color: Colors.white,),
                  SizedBox(width: 30,),
                  Text('07033982649',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                    ),
                  ),
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}
