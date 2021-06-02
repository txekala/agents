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

var nameController= new TextEditingController();
var addressController= new TextEditingController();
var phoneController= new TextEditingController();
var pesquisarController= new TextEditingController();
var emailController= new TextEditingController();

var viewNameController= new TextEditingController();
var viewAddressController= new TextEditingController();
var viewPhoneController= new TextEditingController();
var viewPesquisarController= new TextEditingController();
var viewEmailController= new TextEditingController();


  
    var conn = new databaseConection();
    bool _editando = false;
    var agents;
    var agent1;
    var nome;

    Future agente(data) async{
        
       // print(data);
        var  agente = await conn.imprimir(data);

    

        for (var row in agente) {

         setState(() {
          
          //nome = row[1];
          viewNameController.text = row[1];
          viewAddressController.text = row[2];
          viewPhoneController.text = row[3].toString();
          viewEmailController.text = row[4];

          print(row[3].toString());
          

        });

      }

    }

    Future editarAgente(data) async{

        var  agente = await conn.imprimir(data);

        for (var row in agente) {

         setState(() {
          
          //nome = row[1];
          nameController.text = row[1];
          addressController.text = row[2];
          phoneController.text = row[3].toString();
          emailController.text = row[4];

        });

      }
        
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
      appBar: AppBar(title:Text(widget.data)),
      body: agente == null ?
      Center(
        child: CircularProgressIndicator(),
      ):
      ListView(
        children: <Widget>[
         _editando == false ? TextField(
            enabled: false,
            controller: viewNameController,
            decoration: InputDecoration(
              hintText: 'Nome',
              
            ),
          ):TextField(
            
            controller: nameController,
            decoration: InputDecoration(
              hintText: 'Nome',
              
            ),
          ),
          _editando == false ? TextField(
            enabled: false,
            controller: viewAddressController,
            decoration: InputDecoration(
                hintText: 'address'
            ),
          ) : TextField(
            controller: addressController,
            decoration: InputDecoration(
                hintText: 'address'
            ),
          ),
          _editando == false ? TextField(
             enabled: false,
            controller:viewPhoneController ,
            decoration: InputDecoration(
                hintText: 'Phone'
            ),
          ) : TextField(
            controller:phoneController ,
            decoration: InputDecoration(
                hintText: 'Phone'
            ),
          ),
          _editando == false ? TextField(
             enabled: false,
            controller: viewEmailController,
            decoration: InputDecoration(
                hintText: 'Email'
            ),
          ): TextField(
            controller: emailController,
            decoration: InputDecoration(
                hintText: 'Email'
            ),
          ),

          _editando == true ? 
          FlatButton(onPressed:()async {

              String name = nameController.text;
              String address = addressController.text;
              String phone = phoneController.text;
              String email = emailController.text;
              var id = widget.data;
              var data = [name,address,phone,email,id];
            
              var result = await conect.editar(data);
              print(result);
            }
          , child: Text('Guardar'),):Container(),


            SizedBox(height: 20,),

          

            _editando == false ?
            FlatButton(
              onPressed: () async {
                
             
                  setState(() {
                    
                    _editando = true;

                  });
                 
                  await editarAgente(widget.data);


              }, 
              child: Text('Editar'),):
              FlatButton(
              onPressed: () async {
                
             
                  setState(() {
                    
                    _editando = true;

                  });
                 
                  await editarAgente(widget.data);


              }, 
              child: Text('Cancelar'),),

               FlatButton(
              onPressed: () async {
                
               // print(pesquisar);
                var result = await conect.delete(widget.data);
              
              }, 
              child: Text('Apagar'),),

        ],
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
