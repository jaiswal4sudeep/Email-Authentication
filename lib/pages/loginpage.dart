import 'package:email_authentication/pages/homepage.dart';
import 'package:email_authentication/pages/signinpage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your Email id",
                  labelText: "E-Mail",
                  labelStyle: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFF673AB7),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onChanged: (value) {
                  setState(
                    () {
                      email = value;
                    },
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter tour password",
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0xFF673AB7),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onChanged: (value) {
                  setState(
                    () {
                      password = value;
                    },
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: const Text("Login"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SigninPage(),
                  ),
                );
              },
              child: const Text("Sign in"),
            )
          ],
        ),
      ),
      // body: ,
    );
  }
}
