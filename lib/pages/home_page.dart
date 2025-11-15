import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final TextStyle titleStyle = TextStyle(
    color: Colors.brown,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
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

      //Section Mon restorant le plus proche

      body:SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Theme.of(context).colorScheme.inversePrimary,
                height: 150,
                child: Center(
                  child: Card(
                    margin: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.location_on),
                              const Text(
                                "Mon restorant le plus proche",
                                style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Text(
                                  "4 kms",
                                  style: Theme.of(context).textTheme.bodySmall,
                                  )
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.pink,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.touch_app,color: Colors.white,),
                                SizedBox(width: 16,),
                                Text(
                                  "Commander",
                                  style: TextStyle(color: Colors.white),
                                  )
                                
                              ],
                            ),
                          )
                       ],
                      ),
                      ),
                  ),
                ),
              ),
              // Section en ce momment
              sectionTitle(title: "En ce moment"),
                Center(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 10,
                    child: Container(
                      height: MediaQuery.of(context).size.height *0.5,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                        image: AssetImage("assets/images/layer-burger.jpg"),
                        fit: BoxFit.cover,
                        )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Une petite Faim !",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            Text(
                              "Venez personnalier vos Burgers",
                              style: TextStyle(
                                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                                ),
                              )
                        ],
                      ),
                    ),
                  ),
                ),
                //Section des Burgers
                 sectionTitle(title: "Chaud devant !"), 
                 const Text("Le meilleur de nos Burger a portée de clic"), 
                 SizedBox(
                  height: 250,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        burgerCard(
                          name: "twins",
                           url:"twins",
                            description: "Le Burger de jumeau qui font la Paire",
                            ),
                            burgerCard(
                              name: "Big queen", 
                              url:"big-queen", 
                              description: "Le burger qui porte la courrone a la maison",
                              ),
                              burgerCard(
                                name: "Egg bacon",
                                 url: "egg-bacon-burger", 
                                 description: "Le burger des leve tot",
                                 ),
                                 burgerCard(
                                  name: "Prince",
                                   url: "prince",
                                    description: "Le prefere des futures Roi",
                                    ),
                                    burgerCard(
                                      name: "Cheese",
                                       url: "cheese",
                                        description: "Le clasic pour les fan de fromage",
                                        ),
                      ],
                    ),
                  ),
                 ),
                 //Les Accompagnement
                 sectionTitle(title: "Les accompagnement"),
                 Card(
                  elevation: 8,
                  child: Column(
                    children: [
                      sideDish(
                        name: "Frites classique", 
                        url: "fries",
                        ),
                        sideDish(name: "Frite de patate douce", url: "patate-douce"),
                        sideDish(name:"Poutine" , url:"poutine"),
                        sideDish(name: "Potatoes", url: "potatoes")

                    ],
                  ),
                 ),
                 //Les boissons
                 sectionTitle(title: "Une petite soif ?"),
                 Container(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  height: 250,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        drink(name:"Coca", url: "classic-cola"),
                        drink(name: "Eau gazeuse", url: "sparkling"),
                        drink(name: "A l'orange", url: "orange-soda"),
                        drink(name: "Gout fraise", url: "strawberry-soda"),
                      ],
                    ),
                  ),
                 ),
                 // Une petite touche de sucrerie
                 sectionTitle(title: "Pour finir une petite touche de sucré"),
                 Wrap(
                  alignment: WrapAlignment.spaceAround,
                  children: [
                    douceur(
                      name: "Glace Oreo",
                       url: "oreo-ice", 
                       size: MediaQuery.of(context).size.width * 0.4
                       ),
                       douceur(
                        name: "Crépe fraise",
                         url: "strawberry-waffle",
                          size: MediaQuery.of(context).size.width* 0.4,
                          ),
                          douceur(
                            name: "Donut",
                             url: "donut",
                              size: MediaQuery.of(context).size.width * 0.4,
                              ),
                              douceur(
                                name: "Cupcake", 
                                url: "cupcake", 
                                size: MediaQuery.of(context).size.width *0.4,
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child:Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Center(
                                      child: sectionTitle(title: "Et bon appeti"),
                                    ),
                                    ) 
                                )
                  ],
                 )
          ],
        ),
       
      ),
    );
  }
  Widget sectionTitle({required String title}){
    return  Padding(
           padding: EdgeInsets.only(
            left: 8,
            top: 8,
            ),
           child: Text(title,
           style: titleStyle,
           ),
         );
  }
  Container burgerCard({required String name , required String url,required String description}){
    double size = 250;
    TextStyle descriptionStyle = const TextStyle(
      fontStyle: FontStyle.italic,
      color: Colors.black54,
    );
    return Container(
      margin: EdgeInsets.all(12),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.pinkAccent.withOpacity(0.3),
      ),
      height: size,
      width: size,
      child: Column(
        children: [
          Image.asset(
            "assets/images/$url.jpg",
            height: size*0.6,
            width: size,
            fit: BoxFit.cover,
            ),
            Text(name,style: titleStyle ,),
            Text(description , style: descriptionStyle,textAlign: TextAlign.center,),
        ],
      ),
    );
  }
  Container sideDish({required String name , required String url}){
    return  Container(
    padding: EdgeInsets.all(4),
      child:Column(
        children: [
             Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 32,
            backgroundImage: AssetImage("assets/images/$url.jpg"),
          ),
          Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.pink
        ),
        )
        ],
      ),
      const Divider(
        indent: 8,
        endIndent: 8,
      ),
      
        ],
      )
      
    );
  }
  Container drink({required String name,required String url}){
    const double height=250;
    const double width=125;
    return  Container(
        margin: const EdgeInsets.all(8),
        height: height,
        width: width,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              "assets/images/$url.jpg",
              fit: BoxFit.cover,
              height: height,
            ),
            Text(
              name,
              style: TextStyle(
                color: Colors.pink,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              ),
          ],
        ),
    );
  }

  Container douceur({required String name, required String url,required double size}){
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/$url.jpg",
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.all(8),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.inversePrimary,
            borderRadius: BorderRadius.circular(6),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 4,
        ),
        child: Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      )
    );
  }
}