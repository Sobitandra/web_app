import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new1/controller/home_controller.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  String image = "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png";
  final TextStyle textStyle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 1,
    color: Colors.white
  );
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   centerTitle: true,
      //   title: Text("Kartik Ghosh",style: TextStyle(color: Colors.white),),
      // ),
      body: Container(
        color: Colors.black.withOpacity(.75),
        child: Column(
          children: [
            Container(
              color: Colors.black,
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                children: [
                  const Expanded(child: Text("Kartik Ghosh",style: TextStyle(color: Colors.white,fontSize: 12),)),
                  SizedBox(
                    height: 38,
                      child: Image.network(image)),
                ],
              ),
            ),
            const SizedBox(height: 4,),
            ListTile(
              onTap: (){
                controller.currentRoute.value = 1;
              },
              title: Text("Login",style: textStyle,),
            ),
            Divider(color: Colors.white.withOpacity(.7),),
            ListTile(
              onTap: (){
                controller.currentRoute.value = 1;
              },
              title: Text("Register",style: textStyle,),
            ),
            Divider(color: Colors.white.withOpacity(.7),),
            ListTile(
              title: Text("About",style: textStyle,),
            ),
            Divider(color: Colors.white.withOpacity(.7),),
          ],
        ),
      ),
    );
  }
}
