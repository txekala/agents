import 'package:agents/adicionar.dart';
import 'package:mysql1/mysql1.dart';

class databaseConection  {

   var settings = new ConnectionSettings(
        host: '10.0.4.55',
        port: 3306,
        user: 'dev',
        password: 'P@ssw0rd1',
        db: 'agent'
    );

var conn;

  Future conexao() async{
      var settings = new ConnectionSettings(
        host: '10.0.4.55',
        port: 3306,
        user: 'dev',
        password: 'P@ssw0rd1',
        db: 'agent'
    );
    var conn = await MySqlConnection.connect(settings);
  }



  Future adicionar(data) async{

      var conn = await MySqlConnection.connect(settings);
      var result = await conn.query(
      'insert into agent (name, address, phone, email) values (?, ?, ?,?)',
      data);

      return 'Feito';
  }


  // Metodo para listar os dados todos da tabela agent
  Future listar() async {

  
    var conn = await MySqlConnection.connect(settings);

    var result = await conn.query('select * from agent ');

 

    await conn.close();
    
    return result.toList();

    
  }

  Future imprimir(pesquisar) async {
  
    var conn = await MySqlConnection.connect(settings);
      var result = await conn.query('select * from agent where id = '+pesquisar+' ');

     await conn.close();
     
     return result.toList();
  }

  Future delete(id) async {

    var results = await conn.query('delete from agent where id =',id);

  }
}