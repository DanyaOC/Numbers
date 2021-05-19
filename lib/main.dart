import 'package:flutter/material.dart';
import 'dart:math';

class HelloStateful extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HelloState();
  }
}

class _HelloState extends State<HelloStateful>{
  int variable_estado = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hope"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Cambio de la variable de estado",
              style: TextStyle(fontSize: 28, color: Colors.deepOrange)),
            Text("$variable_estado",
                style: TextStyle(fontSize: 28, color: Colors.green))
          ],
        ),
      ),
      floatingActionButton: _crea_botones(),
    );
  }

  Widget _crea_botones(){
    return Row(
      children: <Widget>[
        SizedBox(width: 30,),
        FloatingActionButton(child: Icon(Icons.exposure_zero_rounded), onPressed: funcion_zero),
        FloatingActionButton(child: Icon(Icons.exposure_neg_1_rounded), onPressed: funcion_neg1),
        FloatingActionButton(child: Icon(Icons.arrow_circle_up_rounded), onPressed: funcion_plus),
        FloatingActionButton(child: Icon(Icons.arrow_circle_down_rounded), onPressed: funcion_minus),
        FloatingActionButton(child: Icon(Icons.add_circle), onPressed: funcion_random)
      ],
    );
  }

  void funcion_zero(){
    setState(() {
      variable_estado = 0;
    });
  }
  void funcion_neg1(){
    setState(() {
      variable_estado = -1;
    });
  }
  void funcion_plus(){
    setState(() {
      variable_estado += 1;
    });
  }
  void funcion_minus(){
    setState(() {
      variable_estado -= 1;
    });
  }
  void funcion_random(){
    setState(() {
      var rand = new Random();
      variable_estado += rand.nextInt(100);
    });
  }

}

class HelloStateless extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        color: Colors.blue,
        height: 400,
        width: 300,
        child: Center(
          child: Text(
            "May the 4th be with u",
                style: TextStyle(fontSize: 40.0, color: Colors.white30, fontFamily: 'Arial' ),
          ),
        ),
      ),
    );
  }

}
void main() {
  runApp(
    MaterialApp(
      title: "Star Wars",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HelloStateful(),
      ),
    )
  );
}
