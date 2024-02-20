import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 0, 130, 255),
      appBar: AppBar(
        title: Center(
          child: const Text('Вкусно и точка',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), 
              fontSize: 30,),),
        )
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Выполнить вход'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 0, 130, 255),
      appBar: AppBar(
        title: const Text('Авторизация'),
      ),
      body: Center(
        child: ConstrainedBox(
      constraints: 
      BoxConstraints.tightFor(width: 300, height: 600),
        child: Column(
          children: [       
          Container(
          
      color: Color.fromARGB(255, 255, 255, 255),
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top: 10),
      child: TextFormField(
        decoration: InputDecoration(border: OutlineInputBorder()) ,),
      ),
      Text ('Логин'),
          Container(
      color: Color.fromARGB(255, 255, 255, 255),
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top:10),
       child: TextFormField(decoration: InputDecoration(border: OutlineInputBorder()), obscureText: true ,),
      ),
      Text('Пароль'),
      Text (''),
          ElevatedButton(
             child: const Text('Вход'),
            onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FourthRoute()),
            );
          }       
        ),
       Text (''),
          ElevatedButton(
             child: const Text('Регистрация'),
            onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ThirdRoute()),
            );
          }       
        ),
         Text (''),
          ElevatedButton(
          child: const Text('Назад'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirstRoute()),
            );
          }          
        ),
          
          ]
        ),
      ),
      )
    );
  }
}
class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 0, 130, 255),
      appBar: AppBar(
        title: const Text('Регистрация'),
      ),
     body: Center(
        child: ConstrainedBox(
      constraints: 
      BoxConstraints.tightFor(width: 300, height: 600),
        child: Column(
          children: [       
          Container(
      color: Color.fromARGB(255, 255, 255, 255),
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top: 10),
      child: TextFormField(decoration: InputDecoration(border: OutlineInputBorder())),
      ),
      Text ('Введите логин'),
          Container(
      color: Color.fromARGB(255, 255, 255, 255),
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top:10),
       child: TextFormField(decoration: InputDecoration(border: OutlineInputBorder()), obscureText: true ,),
      ),
      Text('Введите пароль'),
       
       Container(
      color: Color.fromARGB(255, 255, 255, 255),
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top:10),
       child: TextFormField(decoration: InputDecoration(border: OutlineInputBorder()), obscureText: true ,),
      ),
       Text('Введите пароль еще раз'),
       Text (''), 
       Text (''),
          ElevatedButton(
             child: const Text('Зарегистрироваться'),
            onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          }       
        ),        
         Text (''),
           ElevatedButton(
          child: const Text('Назад'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
          
          ]
        ),
      ),
      )
    );
  }
}
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
                        color: Color.fromARGB(255, 255, 255, 255),
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.only(top:50),
                        width: 300,
                        height: 250,
                         child: Column (
                        children: [
                         Container 
                         (child: Image.network("https://thescottishsun.co.uk/wp-content/uploads/sites/2/2019/01/Burgers-Cheeseburger-L-e1547823525793.jpg"
                         ),
                         ),
                         Text('Чизбургер')
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
                        color: Color.fromARGB(255, 255, 255, 255),
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.only(top:50),
                        width: 300,
                        height: 250,
                         child: Column (
                        children: [
                         Container 
                         (child: Image.network("https://thescottishsun.co.uk/wp-content/uploads/sites/2/2019/01/Burgers-Cheeseburger-L-e1547823525793.jpg"
                         ),
                         ),
                         Text('Чизбургер')
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







