import 'package:agents/src/controller/databaseConection.dart';
import 'package:flutter/material.dart';
import 'package:agents/adicionar.dart';

class imprimir extends StatefulWidget {

  final data;
  const imprimir({
    Key? key,
    required this.data,
    
  }) : super(key: key);


 

  @override
  _imprimirState createState() => _imprimirState();
}

class _imprimirState extends State<imprimir> {
  
    var conn = new databaseConection();

    Future agente(data) async{
        
        var  agente = await conn.imprimir(data);
        setState(() {
          
          agente = agente;

        });

        print(agente);
    }

    
    @override
  void initState() {
    super.initState();
     agente(widget.data);
  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('data')),
      body: ListView(children: [
            Text(widget.data)
      ],),
    );
  }
}