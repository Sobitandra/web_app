import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new1/screens/main_home.dart';

import '../controller/home_controller.dart';
import 'drawer_screen.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // drawer: Drawer(
      //   child: Container(color: Colors.red,width: 200,),
      // ),
      // appBar: AppBar(
      //   backgroundColor: Colors.purpleAccent,
      // ),
      body: Obx(() {
        return SizedBox(
          width: size.width,
          height: size.height,
          child: Row(
            children: [
              if (controller.showDrawer.value)
                Expanded(
                    child: Container(
                  height: size.height,
                  color: Colors.black,
                  child: const DrawerScreen(),
                )),
              Expanded(
                  flex: 5,
                  child: controller.screens[controller.currentRoute.value].screen)
            ],
          ),
        );
      }),
    );
  }
}
