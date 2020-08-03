import 'package:flutter/material.dart';
import 'package:radio_grouped_buttons/radio_grouped_buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Group Grid View radio Buttons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GroupGridRadioButtonExample(),
    );
  }
}

class GroupGridRadioButtonExample extends StatefulWidget {
  @override
  _GroupGridRadioButtonExampleState createState() => _GroupGridRadioButtonExampleState();
}

class _GroupGridRadioButtonExampleState extends State<GroupGridRadioButtonExample> {

  ///horizontal list of buttons
  List<String> buttonList=[
      "Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Group grid Radio Button Example"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20,),
              Text("Horizontal radio list"),
              ///use this widget in bounded parent widget
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: 160,
                child: CustomRadioButton(
                  buttonLables: buttonList,
                  buttonValues: buttonList,
                  radioButtonValue: (value,index){
                    print("Button value "+value.toString());
                    print("Integer value "+index.toString());
                  },
                  horizontal: true,
                  enableShape: true,
                  buttonSpace: 5,
                  buttonColor: Colors.white,
                  selectedColor: Colors.cyan,
                  //buttonWidth: 150,
                ),
              ),
              SizedBox(height: 20,),


              Text("Vertical radio list"),
              ///use this widget in bounded parent widget
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: CustomRadioButton(
                  buttonLables: buttonList,
                  buttonValues: buttonList,
                  radioButtonValue: (value,index){
                    print("Button value "+value.toString());
                    print("Integer value "+index.toString());
                  },
                  enableShape: true,
                  buttonSpace: 5,
                  buttonColor: Colors.white,
                  selectedColor: Colors.cyan,
                  //buttonWidth: 150,
                ),
              ),
              SizedBox(height: 20,),


              Text("Same length button radio vertical list"),
              ///use this widget in bounded parent widget
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: CustomRadioButton(
                  buttonLables: buttonList,
                  buttonValues: buttonList,
                  radioButtonValue: (value,index){
                    print("Button value "+value.toString());
                    print("Integer value "+index.toString());
                  },
                  enableShape: true,
                  buttonSpace: 5,
                  buttonColor: Colors.white,
                  selectedColor: Colors.cyan,
                  buttonWidth: 150,
                ),
              ),
              SizedBox(height: 20,),


              Text("Same length button radio horizontal list"),
              ///use this widget in bounded parent widget
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: CustomRadioButton(
                  buttonLables: buttonList,
                  buttonValues: buttonList,
                  radioButtonValue: (value,index){
                    print("Button value "+value.toString());
                    print("Integer value "+index.toString());
                  },
                  horizontal: true,
                  enableShape: true,
                  buttonSpace: 5,
                  buttonColor: Colors.white,
                  selectedColor: Colors.cyan,
                  buttonWidth: 150,
                ),
              ),

              //Initial Value selection
              Text("Set the Initial selected value as the third button"),
              ///use this widget in bounded parent widget
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: CustomRadioButton(
                  buttonLables: buttonList,
                  buttonValues: buttonList,
                  radioButtonValue: (value,index){
                    print("Button value "+value.toString());
                    print("Integer value "+index.toString());
                  },
                  horizontal: true,
                  enableShape: true,
                  buttonSpace: 5,
                  initialSelection: 2,
                  buttonColor: Colors.white,
                  selectedColor: Colors.cyan,
                  buttonWidth: 150,
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

