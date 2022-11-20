import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new1/controller/home_controller.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final controller = Get.put(HomeController());
  final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(2),
      borderSide: BorderSide(color: Colors.grey.shade300));

  RxString userType = "".obs;
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff008c),
        leading: IconButton(
          onPressed: () {
            controller.showDrawer.value = !controller.showDrawer.value;
          },
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12).copyWith(right: 20),
            child: TextButton(
                onPressed: () {
                  controller.currentRoute.value = 0;
                },
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    minimumSize: const Size(0, 0),
                    textStyle: const TextStyle(fontWeight: FontWeight.w600),
                    padding: const EdgeInsets.symmetric(horizontal: 14)),
                child: const Text("Login")),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: SizedBox(
        width: double.maxFinite,
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * .1,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xffff008c),
                    borderRadius: BorderRadius.circular(8)),
                margin: EdgeInsets.symmetric(horizontal: size.width * .26),
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  color: const Color(0xfff7f7f7),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Sign In",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          if (value!.trim().isEmpty) {
                            return "User name required";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            border: border,
                            enabledBorder: border,
                            focusedBorder: border,
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Username"),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.trim().isEmpty) {
                            return "Password required";
                          } else if (value.trim().length < 8) {
                            return "Minimum password length must be 8";
                          } else {
                            return null;
                          }
                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            border: border,
                            enabledBorder: border,
                            focusedBorder: border,
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Password"),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Obx(() {
                        return Row(
                          children: [
                            Flexible(
                              child: Radio(
                                  value: "Admin",
                                  // contentPadding: EdgeInsets.zero,
                                  activeColor: const Color(0xffff008c),
                                  visualDensity: const VisualDensity(
                                      horizontal: -4, vertical: 0),
                                  // title: const Text("Admin"),
                                  groupValue: userType.value,
                                  onChanged: (value) {
                                    userType.value = value!;
                                  }),
                            ),
                            const Flexible(child: Text(" Admin")),
                            const Flexible(
                              child: SizedBox(
                                width: 18,
                              ),
                            ),
                            Flexible(
                              child: Radio(
                                  value: "Employee",
                                  // contentPadding: EdgeInsets.zero,
                                  activeColor: const Color(0xffff008c),
                                  visualDensity: const VisualDensity(
                                      horizontal: -4, vertical: 0),
                                  // title: const Text("Admin"),
                                  groupValue: userType.value,
                                  onChanged: (value) {
                                    userType.value = value!;
                                  }),
                            ),
                            const Flexible(child: Text(" Employee")),
                          ],
                        );
                      }),
                      const SizedBox(
                        height: 4,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("Validations Done")));
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(double.maxFinite, 0),
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              backgroundColor: const Color(0xff7b7b7b)),
                          child: const Text(
                            "Log in",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.5,
                                fontSize: 16),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Wrap(
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Forgot password?",
                                style: TextStyle(
                                    color: Color(0xff7b7b7b),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.underline),
                              )),
                          const Spacer(flex: 3),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Sign up",
                                style: TextStyle(
                                    color: Color(0xff7b7b7b),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.underline),
                              )),
                          const Spacer(
                            flex: 2,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Guest user",
                                style: TextStyle(
                                    color: Color(0xff7b7b7b),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.underline),
                              )),
                          const Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
