

import 'package:agents/adicionar.dart';
import 'package:agents/imprimir.dart';
import 'package:agents/src/controller/databaseConection.dart';
import 'package:agents/src/views/Add.dart';
import 'package:agents/src/views/Confirma.dart';
import 'package:agents/src/views/PaginaLog.dart';
import 'package:agents/src/views/Procurar.dart';
import 'package:agents/src/views/listar.dart';
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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.


        primarySwatch: Colors.blue,
      ),
      home: paginalog(),
      
      initialRoute:'paginalog',
      
        routes:
        {

          '/adicionar':(context) => adicionar(),
          '/imprimir' : (context) => imprimir(data: null,),
          '/Listar':(context) => listar(),
          '/Adicionar' : (context) => add(),
           '/confirma' : (context) => confirma(),
            '/Procurar' : (context) => procurar(),
             '/home' : (context) => paginalog(),
        }
    );
  }
}



class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  int _counter = 0;

  void _incrementCounter() {
    
   
  }

  var conn = new databaseConection();
  var agentess;
 

  Future agentes() async {

    var  agente = await conn.listar();
     setState(() {
       
       agentess = agente;

     });

    print(agentess);
    
  }

    @override
  void initState() {
    super.initState();
     agentes();
  }
 


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.


    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),

      body:  agentess == null ? Center(
        child: 
        CircularProgressIndicator(),
      ):
      ListView(
        children: <Widget>[

          for (var ag in agentess) 
              ListTile(
              title: Text(ag['name']),
              subtitle: Text(ag['email']),
            )
          
         
        ],
               
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Navigator.pushNamed( context,'/adicionar');
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

