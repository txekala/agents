import 'package:agents/imprimir.dart';
import 'package:agents/src/controller/databaseConection.dart';
import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';



class adicionar extends StatefulWidget {
  @override
  _adicionarState createState() => _adicionarState();
}

var conect = new databaseConection();

var nameController= new TextEditingController();
var addressController= new TextEditingController();
var phoneController= new TextEditingController();
var pesquisarController= new TextEditingController();
var emailController= new TextEditingController();

var pesquisar = pesquisarController.text;
String name = nameController.text;
String address = addressController.text;
String phone = phoneController.text;
String email = emailController.text;
Future <void> conexao() async{

  var settings = new ConnectionSettings(
      host: '10.0.4.55',
      port: 3306,
      user: 'dev',
      password: 'P@ssw0rd1',
      db: 'agent'
  );
  var conn = await MySqlConnection.connect(settings);

  var userId = 1;
  var results = await conn.query('insert into agent (name,address,phone,email) values(?,?,?,?)',
      ['name', 'address', 1212,'email']);

  print(results);

}


class _adicionarState extends State<adicionar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar agentes'),
      ),
      body: ListView(
        children: <Widget>[
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              hintText: 'Nome',
              
            ),
          ),TextField(
            controller: addressController,
            decoration: InputDecoration(
                hintText: 'address'
            ),
          ),TextField(
            controller:phoneController ,
            decoration: InputDecoration(
                hintText: 'Phone'
            ),
          ),TextField(
            controller: emailController,
            decoration: InputDecoration(
                hintText: 'Email'
            ),
          ),

          FlatButton(onPressed:()async {

              var data = [name,address,phone,email];
            
              var result = await conect.adicionar(data);
              print(result);
            }
          , child: Text('Enviar'),),


            SizedBox(height: 20,),

            TextField(
              controller: pesquisarController,
              decoration: InputDecoration(
                hintText: 'Pesquise o seu agente',
                
              ),
              
            ),

            FlatButton(
              onPressed: () {
                
               // print(pesquisar);
              


        
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => imprimir(
                      data: pesquisar,
                     
                    ),),);
              
                 


              }, 
              child: Text('Pesquisar'),)

        ],
      ),
    );
  }
}
