import 'screen_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

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
                'Screen 1',
              ),
              TextButton(
                onPressed: () {
                  Get.to(() => Screen2());
                },
                child: Text(
                  'Move to Screen 2',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
