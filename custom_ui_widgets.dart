import "package:flutter/material.dart";
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(title:Text("Custom UI Widget")),
        body:Center(
          child:customButton(
            text:"Click Me"
          ),
        ),
      ),
    );
  }
}
class customButton extends StatelessWidget{
  final String text;
  customButton({super.key,required this.text});
  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      style:ElevatedButton.styleFrom(
        backgroundColor:Colors.blue,
        shape:RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(15)
        ),
      ),
      onPressed:(){
        Text("Button Clicked");
      },
      child:Text(text,style:TextStyle(color: Colors.white))
    );
  }
}
