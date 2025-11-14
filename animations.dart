import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: SlideAnimation(),
    );
  }
}
class SlideAnimation extends StatefulWidget{
  SlideAnimation({super.key});
  @override
  State<SlideAnimation> createState()=>_MySlideAnimation();
}
class _MySlideAnimation extends State<SlideAnimation> with SingleTickerProviderStateMixin{
  late final AnimationController c=AnimationController(
    vsync:this,
    duration:Duration(seconds:15),
  );
  late Animation<Offset> slide=Tween(begin:Offset(-1,0),end:Offset.zero).animate(c);
  @override
  void initState(){
    super.initState();
    c.forward();
  }
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(title:Text("Slide animation")),
      body:Center(
        child:SlideTransition(
          position:slide,
          child:Text("Hello",style:TextStyle(fontSize:30)),
        ),
      ),
    );
  }
}
