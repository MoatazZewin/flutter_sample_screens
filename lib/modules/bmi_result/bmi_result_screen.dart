import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget
{
  // const BmiResultScreen({Key? key}) : super(key: key);
   final bool isMale;
   final double result;
   final int age;
   BmiResultScreen({
     required this.isMale,
     required this.age,
     required this.result,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon : Icon(Icons.arrow_back),onPressed:(){
          Navigator.pop(context);

        } ,),
        title: Text('Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text("Gander:${isMale?"male":"female"} ",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Result: ${result.round()}",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Age: $age",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
