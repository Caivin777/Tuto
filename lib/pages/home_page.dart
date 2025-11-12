import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Burger Queen",
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.brown),
          ),
          centerTitle: true,
          leading: Icon(Icons.add_alarm_sharp),
          actions: [
            Icon(Icons.person),
          ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body:SingleChildScrollView( 
      child: Container(
        color: Theme.of(context).colorScheme.inversePrimary,
        height: 150,
        child: Center(
          child: Card(
            margin: EdgeInsets.all(18),
            child:  Container(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Icon(Icons.local_airport_rounded),
                    SizedBox(width: 8,),
                    Text(
                      "Mon restaurant le plus proche",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                        ),
                      ),
                    Spacer(),
                    Text("4km"),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                     color: Colors.pink,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child:Center(
                        child:  Text(
                    "Commander",
                    style: TextStyle(color: Colors.white),
                  ),
                    )

                ),
              ]
          )
            
            ),
          ),
        )
      ),
      )
      
    );
  }
}