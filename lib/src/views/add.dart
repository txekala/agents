import 'package:flutter/material.dart';
import 'package:agents/src/views/confirma.dart';
import 'package:agents/src/views/listar.dart';
import 'package:agents/src/views/paginalog.dart';

class add extends StatefulWidget {
  @override
  _addState createState() => _addState();
}

class _addState extends State<add> {
  @override
  
  Widget build(BuildContext context) {
    var deepPurple = Colors.deepPurple;
    return Scaffold(
      
              
      backgroundColor: Colors.white,
      // ignore: missing_required_param
      body:
      SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          
       child: Padding(
         


          padding: EdgeInsets.all(15),  
          
            child: Column( 
               mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
                   
              children: <Widget>[ 
                const ListTile(  
                
                title: Text(  
                  'Adicionar',  
                  style: TextStyle(fontSize: 30.0)  
                ),  
          
              ), 
                Padding(  
                
          
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'User Name',  
                      hintText: 'Insira o Nome',  
                    ),  
                  ),  
                ),  
                Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    obscureText: false,  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Endereco',  
                      hintText: 'Por favor coloque o encereco',  
                    ),  
                  ),  
                ), 
                Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    obscureText: false,  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Numero',  
                      hintText: 'Por favor coloque o seu numero',  
                    ),  
                  ),  
                ),
                Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    obscureText: false,  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Email',  
                      hintText: 'Por favor coloque o seu Email',  
                    ),  
                  ),  
                ), 
               
                RaisedButton( 
                   
                   padding: EdgeInsets.all(15),
                  textColor: Colors.white,  
                  color: Colors.blue,  
                  child: Text('Salvar'),  
                  onPressed: ()=>{
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => confirma()),
  ),
                  },
                  
                ),
                
                   FlatButton(  
                  
                  textColor: Colors.white,  
                  color: Colors.blue,  
                  child: Text('Limpar'),  
                  onPressed: (){}, 
              ),
               FlatButton(  
                  
                  textColor: Colors.white,  
                  color: Colors.blue,  
                  child: Text('Listar'),  
                  onPressed: ()=>{
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => listar()),
  ),

                  }, 
              ),
               FlatButton( 
                  
                  textColor: Colors.white,  
                  color: Colors.blue,  
                  child: Text('cancelar'),  
                  onPressed: ()=>{
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => paginalog()),   
  ),
                  }, 
              ), 
                 
              ],
                
            )  
        )
      )  
      )  
    );
       
    
  }  
} 

