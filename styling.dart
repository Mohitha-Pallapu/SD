import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:HomePage()
    );
  }
}
class HomePage extends StatelessWidget{
  HomePage({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme:ThemeData(
        textTheme:TextTheme(
          headlineLarge:TextStyle(fontSize:25,fontWeight:FontWeight.bold),
          bodyMedium:TextStyle(fontSize:20)
        ),
      ),
      home:Scaffold(
        body:Center(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children:[
              Text("Flutter Themes",style:Theme.of(context).textTheme.headlineLarge),
              Text("this text uses body style",style:Theme.of(context).textTheme.bodyMedium)
            ],
          ),
        ),
      ),
    );
  }
}
