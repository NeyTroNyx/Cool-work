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
        title: const Text('Колледж связи 54',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),   // зеленый цвет текста
            fontSize: 40,),)
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
      BoxConstraints.tightFor(width: 400, height: 400),
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
              MaterialPageRoute(builder: (context) => const fourthRoute()),
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
      BoxConstraints.tightFor(width: 400, height: 500),
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
class fourthRoute extends StatelessWidget {
  const fourthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(255, 0, 130, 255), 
    body: Center(
        child: ConstrainedBox(
      constraints: 
      BoxConstraints.tightFor(width: 500, height: 500),
        child: Column(
          children: [       
          Container(
      color: Color.fromARGB(255, 0, 130, 255),
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top: 10),
      child: Center(child: Text('Добро пожаловать!', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 40,)),)
    ),
    Text (''),
           ElevatedButton(
          child: const Text('Назад'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirstRoute()),
            );
          },
        ),
          ]
        )
        )
    )
    );
  }
}