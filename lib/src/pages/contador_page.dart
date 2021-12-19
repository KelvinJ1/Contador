import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget {

  @override
  createState()=>_ContadorPageState();
  }



class _ContadorPageState extends State<ContadorPage>{

  
int _conteo=0;

@override
Widget build(BuildContext context){
return Scaffold(

  appBar: AppBar(backgroundColor: Colors.red[400],
    title: Text('Título'),
    centerTitle: true ,
    elevation:5.0,
  ),

  body: Center( 
  
    child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text('Hola Mundo!', style:TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent[400])),
      Text('Bienvenido, eres el usuario número $_conteo', style:TextStyle(fontSize: 20.0, color: Colors.blueAccent), )
      ],


    ),
    ),
    floatingActionButton: _crearBotones(),
  

);


} 

Widget _crearBotones(){


return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,


children: [
  
  SizedBox(width: 5.0),

  FloatingActionButton(child: Icon(Icons.remove), onPressed:_sustraer), 

  
  FloatingActionButton(child: Icon(Icons.restore),onPressed: _reset),




FloatingActionButton(child: Icon(Icons.add),onPressed: _agregar),



],);



}

void _agregar(){ setState(() =>_conteo++); }

void _sustraer(){ setState(() =>_conteo--); }

void _reset(){setState(() =>_conteo=0);}

}