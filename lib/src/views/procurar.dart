import 'package:flutter/material.dart';
import 'package:agents/src/views/paginalog.dart';

class procurar extends StatefulWidget {
  @override
  _procurarState createState() => _procurarState();
}

class _procurarState extends State<procurar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: MyCardWidget(),  
      
      
    );  
  }  
}  
  
/// This is the stateless widget that the main application instantiates.  
class MyCardWidget extends StatelessWidget {  
  MyCardWidget({Key,key}) : super(key: key);  
  
  @override  
  Widget build(BuildContext context) {  
    var center = Center(  
      
      child: Container(  
        width: 500,  
        height: 400,  
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
                  'Pesquisa',  
                  style: TextStyle(fontSize: 30.0)  
                ),  
          
              ), 
              //Criacao do botao 
                 SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
       child: Padding(


          padding: EdgeInsets.all(15),  
            child: Column( 
               mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
               
              children: <Widget>[  
                Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'User ID',  
                      hintText: 'Insira o ID',  
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
                      hintText: 'Por favor coloque o Numero',  
                    ),  
                  ),  
                ), 
              
              
               
                RaisedButton( 
                  
                   padding: EdgeInsets.all(15),
                  textColor: Colors.white,  
                  color: Colors.blue,  
                  child: Text('Pesquisar'),  
                  onPressed: (){},
                  
                ),
                
                   FlatButton(  
                  
                  textColor: Colors.white,  
                  color: Colors.blue,  
                  child: Text('Cancelar'),  
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
    
            ], 
             
          ),  
            
        ),  
        
      )  
          
    );
  
    return center;
  }
  
}