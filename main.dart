import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        body:ResponsiveUI()
      ),
    );
  }
}
class ResponsiveUI extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    double screenWidth=MediaQuery.of(context).size.width;
    bool isMobile=screenWidth<600;
    bool isTablet=screenWidth>=600 && screenWidth<1024;
    bool isDesktop=screenWidth>=1024;
    if(isMobile){
      return mobileUI();
    }
    if(isTablet){
      return tabletUI();
    }
    else{
      return desktopUI();
    }
  }
}
Widget mobileUI(){
  return Center(
        child:(
          Text("Mobile View",style:TextStyle(fontSize:50))
        ),
      );
}
Widget tabletUI(){
  return Center(
        child:(
          Text("Tablet View",style:TextStyle(fontSize:50))
        ),
      );
}
Widget desktopUI(){
  return Center(
        child:(
          Text("Desktop View",style:TextStyle(fontSize:50))
      ),
      );
}