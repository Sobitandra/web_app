import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new1/controller/home_controller.dart';

import 'intro/intro_screen.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({Key? key}) : super(key: key);

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffff008c),
          leading: IconButton(
            onPressed: (){
              controller.showDrawer.value = !controller.showDrawer.value;
            },
            icon: const Icon(Icons.menu,color: Colors.white,),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12).copyWith(right: 20),
              child: TextButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    minimumSize: const Size(0, 0),
                    textStyle: const TextStyle(fontWeight: FontWeight.w600),
                    padding: const EdgeInsets.symmetric(horizontal: 14)
                  ),
                  child: const Text("Logout")),
            )
          ],
        ),
      body: const IntroScreen(),
    );
  }
}
