
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{


final conteo=10;

@override
Widget build(BuildContext context){
return Scaffold(

  appBar: AppBar(
    title: Text('Título'),
    centerTitle: true ,
    elevation:5.0,
  ),

  body: Center( 
  
    child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text('Hola Mundo!', style:TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent[400])),
      Text('Bienvenido, eres el usuario número $conteo', style:TextStyle(fontSize: 20.0, color: Colors.blueAccent), )
      ],


    ),
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: (){
        //conteo= conteo+1;
      }
    ),
    floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,

  

);


} 



}