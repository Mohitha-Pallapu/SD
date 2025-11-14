import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:MyForm(),
    );
  }
}
class MyForm extends StatefulWidget{
  @override
  State<MyForm> createState()=>_MyFormState();
}
class _MyFormState extends State<MyForm>{
  final key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(title:Text("Validating Form")),
      body:Center(
        child:Form(
          key:key,
          child:Column(
            children:[
              SizedBox(height:50),
              TextFormField(
                decoration:InputDecoration(
                  labelText:"Name",
                ),
                validator:(v)=>v!.isEmpty ? "Enter Name:" :null,
              ),
              SizedBox(height:50),
              TextFormField(
                obscureText:true,
                decoration:InputDecoration(
                  labelText:"Password",
                ),
                validator:(v)=>v!.length<4?" Min 4 characters":null,
              ),
              SizedBox(height:50),
              ElevatedButton(
                onPressed:(){
                  if(key.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content:Text("Valid")),
                    );
                  }
                },
                child:Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
