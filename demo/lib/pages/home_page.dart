import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Theme.of(context).colorScheme.inversePrimary,
        leading: Icon(Icons.token),
        actions: const [
          Icon(Icons.person),
        ],
        title: Text(
          "Burger Queen",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.brown,
          ),
          ),
          centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text("Hello world"),
          Spacer(
            flex: 1,
          ),
          Divider(
            thickness: 1,
            indent: 2,
            endIndent: 3,
            height: 250,
            color: Colors.blue,
          ),
          Row(
            children: [
              SizedBox(width: 12,),
              Icon(Icons.home),
              SizedBox(
                height: 25,
                child: VerticalDivider(
                  thickness: 2,
                  color: Colors.amber,
                ),
              ),
              Spacer(),
              Text("Hello word"),
              SizedBox(
                width: 12,
              ),
            ],
          ),
          Container(
            color: Colors.amber,
            height: 125,
          ),
          Spacer(
            flex: 2,
          ),
          Icon(Icons.phone),
          Spacer(
            flex: 3,
          ),
        ],
      ),
        );
  }
}