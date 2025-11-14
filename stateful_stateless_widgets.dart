import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:MyHome(),
    );
  }
}
class MyHome extends StatefulWidget{
  @override
  State<MyHome> createState()=>_MyHomeState();
}
class _MyHomeState extends State<MyHome>{
  int c=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Center(
        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            Text("Count:$c",style:TextStyle(fontSize:25)),
            SizedBox(height:50),
            ElevatedButton(
              onPressed:()=>setState(()=>c++),
              child:Text("+",style:TextStyle(fontSize:25)),
            ),
          ],
        ),
      ),
    );
  }
}
