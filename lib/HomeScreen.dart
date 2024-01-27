import 'package:bmi/widgets/LeftShape.dart';
import 'package:bmi/widgets/RightShape.dart';
import 'package:bmi/widgets/StatusText.dart';
import 'package:flutter/material.dart';

class BMIHomeScreen extends StatefulWidget {
  const BMIHomeScreen({super.key});

  @override
  State<BMIHomeScreen> createState() => _BMIHomeScreenState();
}

class _BMIHomeScreenState extends State<BMIHomeScreen> {
  var widthController = TextEditingController();
  var heightController = TextEditingController();

  var yourBMI = 0.00;
  var message = '';
  double goodWidth = 10.0;
  double badWidth = 10.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                child: Center(
                  child: Text(
                    "Calculate your BMI",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    child: TextField(
                      cursorColor: Colors.black,
                      controller: heightController,
                      decoration: InputDecoration(
                        hintText: 'height',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 100,
                    child: TextField(
                      cursorColor: Colors.black,
                      controller: widthController,
                      decoration: InputDecoration(
                        hintText: 'weight',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  double weight = double.parse(widthController.text);
                  double height = double.parse(heightController.text);
                  double BMI = weight / (height * height);

                  setState(() {
                    yourBMI = BMI;

                    if (BMI > 25) {
                      badWidth = 270;
                      goodWidth = 30;
                      message = 'you are overwight!';
                    } else if (BMI <= 25 && BMI > 18.5) {
                      badWidth = 30;
                      goodWidth = 270;
                      message = 'you are in good shape!';
                    } else {
                      badWidth = 260;
                      goodWidth = 50;
                      message = 'you are thin!';
                    }
                  });
                },
                child: Container(
                  width: 120,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(36, 0, 0, 0),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      'Calculate!',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '${yourBMI.toStringAsFixed(2)}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              StatusText(message),
              SizedBox(
                height: 30,
              ),
              LeftShape(goodWidth),
              SizedBox(
                height: 20,
              ),
              RightShape(badWidth),
            ],
          ),
        ),
      ),
    );
  }
}
