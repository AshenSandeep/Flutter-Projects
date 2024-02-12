import 'package:bmi_calculator_app/controllers/user_input_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bmi_calculator_app/constants.dart';
import 'dart:math' as math;

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen();

  final UserInputDataController userInputDataController = Get.find();
  // late String result;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Color(0xFF1B1A55),
        appBar: AppBar(
          title: Center(
            child: Text(
              'BMI Calculator',
              style: TextStyle(
                color: Color(0xFF9290C3),
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Color(0xFF070F2B),
        ),
        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 50.0, bottom: 20.0, left: 20.0, right: 20.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: kTextFieldStyles.copyWith(
                      hintText: 'Enter Your Weight',
                      hintStyle: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      userInputDataController.weight = int.tryParse(value) ?? 0;
                    },
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: kTextFieldStyles.copyWith(
                      hintText: 'Enter Your Height',
                      hintStyle: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      userInputDataController.height = int.tryParse(value) ?? 0;
                    },
                  ),
                ),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.teal,
                  child: MaterialButton(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Calculate',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    onPressed: () {
                      userInputDataController.calculateBMI();
                    },
                  ),
                ),
                Obx(
                  () => Visibility(
                    visible: userInputDataController.visibility,
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            (userInputDataController.bmi).toStringAsFixed(2),
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                              userInputDataController.getBMIValue(),
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.pink,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
