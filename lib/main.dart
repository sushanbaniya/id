import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget{
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('ID Card'),
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState((){
            ninjaLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.lightGreen,
        hoverColor: Colors.red,

      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images.jpeg'),
                radius: 50,
              ),
            ),
            Divider(
              height: 90,
              color: Colors.pinkAccent,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.deepOrange,
                letterSpacing: 2
              )
            ),
            SizedBox(height: 10),
            Text(
              'SUSHAN BANIYA',
              style: TextStyle(
                fontSize: 28,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrangeAccent,
              )
            ),
            SizedBox(height: 30),

            Text(
                'Number of Button Clicks',
                style: TextStyle(
                    color: Colors.deepOrange,
                    letterSpacing: 2
                )
            ),
            SizedBox(height: 10),
            Text(
                '$ninjaLevel',
                style: TextStyle(
                  fontSize: 28,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrangeAccent,
                )
            ),
            SizedBox(height: 30),

            Row(
              children: <Widget> [
                Icon(
                  Icons.email,
                  color: Colors.purple,
                ),
                SizedBox(width: 10),
                Text(
                  'sushanbaniya@gmail.com',
                  style: TextStyle(
                    color: Colors.purpleAccent,
                    letterSpacing: 2,
                    fontSize: 18,
                  )
                )
              ]
            )

          ]
        )
      )
    );
  }
}


