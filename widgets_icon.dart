import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(title:Text("Flutter Widgets Demo")),
        body:Center(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children:[
              Text("Flutter Widgets",style:TextStyle(fontSize:24)),
              SizedBox(height:20),
              Icon(Icons.alarm,size:30),
              SizedBox(height:20),
              ElevatedButton(
                onPressed:()=>print("Button pressed"),
                child:Text("Click me"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
