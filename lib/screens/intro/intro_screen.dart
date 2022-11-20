import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreen> {
  List<String> list2 = [
    "About Company",
    "Description",
    "Experience",
    "Notice Period",
    "Skills",
    "Earning Period",
    "Current CTC",
    "Notice Period",
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size.height*.2,),
              const Text(
                "Our warm Welcome!!",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0)
                ,),
              const SizedBox(height: 20),
              const Text(
                "Do you love coding ?\nwe will reach you.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 0)
                ,),
              const SizedBox(height: 20),
              Wrap(
                spacing: 12,
                children: [
                  commonButton(
                    onTap: (){},
                    text: "Fill your details here"
                  ),
                  commonButton(
                      onTap: (){},
                      text: "Job Apply"
                  ),
                  commonButton(
                      onTap: (){},
                      text: "List of company"
                  ),
                  commonButton(
                      onTap: (){},
                      text: "User Post Details"
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                // height: 60,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(2)
                ),
                padding: const EdgeInsets.only(top: 8),
                child: Wrap(
                  spacing: 12,
                  children: List.generate(list2.length, (index) => commonButton(
                      onTap: (){},
                      text: list2[index]
                  ))
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  commonButton({
 required onTap,
 required text,
}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: TextButton(
                      onPressed: onTap,
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                          minimumSize: const Size(0, 0),
                          shape: const StadiumBorder(),
                          textStyle: const TextStyle(fontWeight: FontWeight.w500),
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16)
                      ),
                      child: Text(text)),
    );
  }
}
