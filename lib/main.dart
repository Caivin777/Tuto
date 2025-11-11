import 'package:flutter/material.dart';

void main() {
  runApp( const  MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp( {super.key, });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
      ),
      darkTheme: ThemeData.dark(),
      home: MyHomePage(title: "Flutter demo"),
    );
  }
}

  class MyHomePage extends StatelessWidget {

    final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(title),
        leading: const Icon(Icons.home),
        actions: [
          Icon(Icons.person),
          Icon(Icons.access_time),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(24), 
          child: Text("Salut les codeurs"),
          ),
          elevation: 7,
          centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(
            flex: 2,
          ),
          Text("Description de la page"),
          const Divider(
            height:128,
            thickness:4,
            indent: 12,
            endIndent:64,
            color: Colors.deepPurple,
          ),
          Row(
            children: [
              const SizedBox(width: 10,),
              Icon(Icons.home),
              SizedBox(
                height: 45,
                  child: VerticalDivider(
                    color: Colors.amber,
                    thickness: 1,
                  ),
              ),
              Spacer(),
              Text("Je suis dans le row"),
              SizedBox(width: 10,)
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Container(
                color: Colors.white,
                height:45,
                width: 125,
              ),
              Expanded(
                child:Container(
                  color: Colors.green,
                  height: 45,
                ) 
                )
            ],
          ),
          const Spacer(),
          Container(
            color: Colors.red,
            height: 32,
          ),
          const Spacer(),
          const Icon(Icons.add_a_photo,
          color: Colors.orange,
          ),
          const Spacer(),
        ],
      )
    );
  }
}

