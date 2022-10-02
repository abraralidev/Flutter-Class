import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage(
                      'images/logo.png',
                    ),
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Maintenance",
                        style:
                            TextStyle(fontFamily: "Rubik Medium", fontSize: 24),
                      ),
                      Text(
                        "Box",
                        style: TextStyle(
                            fontFamily: "Rubik Medium",
                            fontSize: 24,
                            color: Colors.orange),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Log In",
                style: TextStyle(
                  fontFamily: "Rubik Medium",
                  fontSize: 26,
                  color: Colors.black,
                ),
              ),
              const Text(
                "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit,",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Rubik Regular",
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: const Icon(Icons.mail_outlined),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 243, 243, 243),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 236, 236, 236)),
                          borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 236, 236, 236)),
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: const Icon(Icons.visibility),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 243, 243, 243),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 236, 236, 236)),
                          borderRadius: BorderRadius.circular(20)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 236, 236, 236)),
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(left: 200),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontFamily: "Rubik Regular",
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange),
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontFamily: "Rubik Regular",
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontFamily: "Rubik Medium",
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontFamily: "Rubik Medium",
                      fontSize: 16,
                      color: Colors.orange,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
