import "package:flutter/material.dart";
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:HomeScreen()
    );
  }
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(title:Text("Home Screen")),
      body:Center(
        child:ElevatedButton(
          child:Text("Go to second screen"),
          onPressed:(){
            Navigator.push(context,MaterialPageRoute(builder:(context)=>SecondScreen()));
          }
        ),
      ),
    );
  }
}
class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(title:Text("Second Screen")),
      body:Center(
        child:ElevatedButton(
          child:Text("Go to Home Screen"),
          onPressed:(){
            Navigator.pop(context);
          }
        ),
      ),
    );
  }
}
