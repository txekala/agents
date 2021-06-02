import 'package:agents/src/controller/databaseConection.dart';
import 'package:flutter/material.dart';
import 'package:agents/src/views/Add.dart';

class listar extends StatefulWidget {
  @override
  _listarState createState() => _listarState();
}

class _listarState extends State<listar> {
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
       // title: Text(widget.tittle),
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


