import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: Scaffold(body: LoginScreen()));
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(40.0),
        child: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/images/logo.png"),
                Text(
                  "Welcome to the app",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "We're excited to help you book and manage \n your services appointments with ease .",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey[450]),
                    textAlign: TextAlign.center),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: SmoothPageIndicator(
                      controller: PageController(initialPage: 0), count: 3,effect: SlideEffect(dotWidth: 5,dotHeight: 5),),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[800]),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          )),
                    ),
                  ],
                )
                ,SizedBox(height: 30,)
                ,Text("Create an account ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),)
              ]),
        ));
  }
}
