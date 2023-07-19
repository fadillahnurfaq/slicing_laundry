import 'package:flutter/material.dart';
import 'package:slicing_laundry/views/main_navigation_view.dart';
import 'package:slicing_laundry/widgets/app_button.dart';
import 'package:slicing_laundry/widgets/text_label.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                Positioned(
                  top: 20,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/cloth_faded.png",
                  ),
                ),
                Positioned(
                  top: -40,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/illustration.png",
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(10.0),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10.0,
                        ),
                        const TextLabel(
                          text: "Welcome to Laundree!",
                          fontWeight: FontWeight.bold,
                          size: 20.0,
                        ),
                        TextLabel(
                          text:
                              "This is the first version of our laundry app. Please sign in or create an account below.",
                          color: Colors.black.withOpacity(.6),
                        ),
                      ],
                    ),
                  ),
                  AppButton(
                    text: "Log In",
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainNavigationView(),
                          ),
                          (route) => false);
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  AppButton(
                    text: "Create an account",
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    splashColor: Colors.white,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
