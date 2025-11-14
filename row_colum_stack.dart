import 'package:flutter/material.dart';

void main(){
  runApp(LayoutApp());
}

class LayoutApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
     return MaterialApp(
       home:Scaffold(
        appBar:AppBar(title:Text('Layout demo')),
        body:Center(
          child:Column(
            children : [
               Text("Row example"),
               SizedBox(height:15),

               //row example
               Row(
                 mainAxisAlignment:MainAxisAlignment.center,
                 children:[
                  Container(width:50,height:50,color:Colors.red),
                  Container(width:50,height:50,color:Colors.blue),
                  Container(width:50,height:50,color:Colors.green),
                 ],
               ),
               SizedBox(height:20),
               Text("Column Example"),
               SizedBox(height:20),
              //column example
              Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children:[
                  Container(width:50,height:50,color:Colors.red),
                  Container(width:50,height:50,color:Colors.blue),
                  Container(width:50,height:50,color:Colors.green),
                ],
              ),
              //stackexample
              SizedBox(height:20),
              Text("Stack example"),
              Center(
                child:Stack(
                  alignment:Alignment.center,
                  children:[
                    Container(width:100,height:100,color:Colors.red),
                    Container(width:70,height:70,color:Colors.blue),
                  ],
                ),
              ),

            ],
          ),
        ),
       ),
     );
  }
}
