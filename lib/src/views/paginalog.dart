import 'dart:ui';


import 'package:agents/src/views/add.dart';
import 'package:agents/src/views/procurar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter/Procurar.dart';
import 'package:agents/src/views/paginalog.dart';
//import 'package:flutter/adicionar.dart';

class paginalog extends StatefulWidget {
  @override
  _paginalogState createState() => _paginalogState();
}

class _paginalogState extends State<paginalog> {
  @override
  Widget build(BuildContext context) {
    var deepPurple = Colors.deepPurple;
    return Scaffold(
      backgroundColor: Colors.blue,
      // ignore: missing_required_param
      body: MyCardWidget(),  
      
      
    );  
  }  
}  
  
/// This is the stateless widget that the main application instantiates.  
class MyCardWidget extends StatelessWidget {  
  MyCardWidget({Key, key}) : super(key: key);  
  
  @override  
  Widget build(BuildContext context) {  
    var center = Center(  
      
      child: Container(  
        width: 300,  
        height: 250,  
        padding: new EdgeInsets.all(10.0),  
        child: Card( 
          
          shape: RoundedRectangleBorder(  
            borderRadius: BorderRadius.circular(5.0),  
          ),  
          color: Colors.white,  
          elevation: 20,  
          
          child: ListView(
              
    
            
            children: <Widget>[  
                    
        
           
              const ListTile(  
                
                title: Text(  
                  'Menu',  
                  style: TextStyle(fontSize: 30.0)  
                ),  
          
              ), 
              //Criacao do botao 
                Center(
                child: ButtonBar(  
                 mainAxisSize: MainAxisSize.max, 
                  children: <Widget>[ 
                     
                
                   Center(
                     child: ElevatedButton(
  onPressed: ()=>{
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>add()),
  ),
      // Respond to button press
  },
  child: Text('dados'),
   // ignore: deprecated_member_use
 
  
),
   


                   ) 
                   
  
                   
                  ],
                    
                  
                ),
                
                
              ),
              
              Center(
                child: ButtonBar(  
                   mainAxisSize: MainAxisSize.max, 
                   children: <Widget>[ 
              Center(
             
                     child: ElevatedButton(
                       
  onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => procurar()),
  
      // Respond to button press
    );
  },
  child: Text('Pesquisar'),
   // ignore: deprecated_member_use
 
  
),
            
                ),
                  ],
                ),
              ),
              
              
            ], 
             
          ),  
            
        ),  
        
      )  
          
    );
    
  
    return center;
  }
  
}