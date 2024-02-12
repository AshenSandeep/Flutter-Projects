import 'package:bmi_app/views/screen_1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Screen 2',
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => Screen1());
                },
                child: Text(
                  'Move to Screen 1',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
