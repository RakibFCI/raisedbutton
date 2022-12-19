import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String msg = "Flutter Raised Button";

  @override
  Widget build(BuildContext context) {
    void _changeText(){
      setState((){
        if(msg.startsWith("F")){
          msg = "We Learn Flutter RaisedButton";
        }
        else{
          msg = "Flutter Raised Button";
        }
      });
    }
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("RaisedButton"),),
          body: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(msg,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  ElevatedButton(
                    child: Text("Click",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                      onPressed: _changeText),
                  SizedBox(height: 10,),
                  ElevatedButton(
                      child: Text("Click",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                      onPressed: _changeText),
                ],
              ),
            ),
          ),
    ));
  }
}
