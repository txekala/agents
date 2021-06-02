import 'package:flutter/material.dart';
import 'package:agents/src/views/paginalog.dart';

class confirma extends StatefulWidget {
  @override
  _confirmaState createState() => _confirmaState();
}

class _confirmaState extends State<confirma> {
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
  MyCardWidget({Key, key}) : super(key: key);

  get home => null;  
  
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
                  'Confirmar a operacao?',  
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
           
              
              
               
                RaisedButton( 
                  
                   padding: EdgeInsets.all(15),
                  textColor: Colors.white,  
                  color: Colors.blue,  
                  child: Text('SIM'),  
                  onPressed: ()=>{
    
                  },
                  
                ),
                
                   FlatButton(  
                  
                  textColor: Colors.white,  
                  color: Colors.blue,  
                  child: Text('NAO'),  
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