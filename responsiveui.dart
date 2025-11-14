import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title:Text("Responsive UI Demo")),
        body:LayoutBuilder(
          builder:(context,constraints){
            if(constraints.maxWidth<600){
              return Center(
                child:Column(
                  children:[
                  Text("Mobile View"),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children:[
                      Container(width:20,height:20,color:Colors.red),
                      Container(width:20,height:20,color:Colors.blue),
                    ],
                  ),
                  ],
                )
              );
            }
            else{
              return Center(
                child:Column(
                  children:[
                  Text("Tablet/Desktop view"),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children:[
                      Container(width:20,height:20,color:Colors.blue),
                      Container(width:20,height:20,color:Colors.red),
                    ],
                  ),
                  ],
                )
              );
            }
          }
        )
      )
    );
  }
}
