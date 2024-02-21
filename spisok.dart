import 'package:flutter/material.dart';
import 'menu.dart';

final List<String> photos = <String>['https://e7.pngegg.com/pngimages/95/482/png-clipart-mcdonald-s-quarter-pounder-cheeseburger-hamburger-restaurant-mcdonalds.png', 'https://w7.pngwing.com/pngs/850/1002/png-transparent-big-n-tasty-hamburger-cheeseburger-mcdonald-s-big-mac-mcdonald-s-quarter-pounder-hamburger-meal-set-food-recipe-cheeseburger.png', 'https://e7.pngegg.com/pngimages/129/850/png-clipart-cheeseburger-hamburger-mcdonald-s-big-mac-buffalo-burger-slider-junk-food-cheeseburger-hamburger.png'];
final List<int> colorCodes = <int>[600, 500, 100];

class FourthRoute extends StatelessWidget {
  const FourthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 0, 130, 255), 
    appBar: AppBar(
        title: const Text('Вкусно и точка',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), 
            fontSize: 30,),)
      ),
      body: Center(
        child: ListView(
            children: [
              Center(
                child: ElevatedButton (style: ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 0, 130, 255), 
  ),child: Container(
                        color: Color.fromARGB(255, 0, 130, 255),
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.only(top:50),
                        width: 300,
                        height: 280,
                         child: Column (
                        children: [
                         Container 
                         (child: Image.network("https://e7.pngegg.com/pngimages/95/482/png-clipart-mcdonald-s-quarter-pounder-cheeseburger-hamburger-restaurant-mcdonalds.png"
                         ),
                         ),
                         Text('Чизбургер',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), 
              ),)
                         ]
                         )
                ),
                onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirstRoute()),
            );
          }       
                )
              ),
              Center(
                child: ElevatedButton (style: ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 0, 130, 255), 
  ),child: Container(
                        color: Color.fromARGB(255, 0, 130, 255),
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.only(top:50),
                        width: 300,
                        height: 280,
                         child: Column (
                        children: [
                         Container 
                         (child: Image.network("https://w7.pngwing.com/pngs/850/1002/png-transparent-big-n-tasty-hamburger-cheeseburger-mcdonald-s-big-mac-mcdonald-s-quarter-pounder-hamburger-meal-set-food-recipe-cheeseburger.png"
                         ),
                         ),
                        Text('Биг Тейсти',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), 
              ),)
                         ]
                         )
                ),
                onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirstRoute()),
            );
          }       
                )
              ),
              Center(
                child: ElevatedButton (style: ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 0, 130, 255), 
  ),child: Container(
                        color: Color.fromARGB(2255, 0, 130, 255),
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.only(top:50),
                        width: 300,
                        height: 290,
                         child: Column (
                        children: [
                         Container 
                         (child: Image.network("https://e7.pngegg.com/pngimages/129/850/png-clipart-cheeseburger-hamburger-mcdonald-s-big-mac-buffalo-burger-slider-junk-food-cheeseburger-hamburger.png"
                         ),
                         ),
                         Text('Биг Мак',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), 
              ),)
                         ]
                         )
                ),
                onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirstRoute()),
            );
          }       
                )
              ),
              
            ],
        ),
      ),
        );
  }
}