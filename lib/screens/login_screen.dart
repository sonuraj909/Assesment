import 'package:assessment1/core/colors.dart';
import 'package:assessment1/core/constants.dart';
import 'package:assessment1/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailText = TextEditingController();
  final passwordText = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailText.dispose();
    passwordText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundcolour,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  const Text(
                    'Welcome, to sign in continue',
                    style: TextStyle(
                      color: kWhitecolour,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                  kHeight,
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                          ),
                          child: Container(
                            width: screenSize.width / 2,
                            height: screenSize.height / 10,
                            decoration: const BoxDecoration(
                              color: ktransparentcolour1,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: screenSize.width / 2,
                          height: screenSize.height / 10,
                          decoration: const BoxDecoration(
                            color: ktransparentcolour2,
                          ),
                          child: const Center(
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                color: kWhitecolour,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TextFormField(
                    controller: emailText,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ktransparentcolour1),
                      ),
                      labelStyle: TextStyle(
                        fontSize: 18,
                        color: kWhitecolour,
                      ),
                      labelText: 'Email',
                      contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                    ),
                  ),
                  TextFormField(
                    controller: passwordText,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ktransparentcolour1),
                      ),
                      labelStyle: TextStyle(
                        fontSize: 18,
                        color: kWhitecolour,
                      ),
                      labelText: 'Password',
                      contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                    ),
                  ),
                  kHeight6,
                  SizedBox(
                    width: screenSize.width / 2,
                    height: screenSize.height / 10,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(kWhitecolour),
                      ),
                      onPressed: () async {
                        var response = await callapiservice();
                        if (response == 200) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen1(),
                            ),
                          );
                        }
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: backgroundcolour,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  kHeight,
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot your password?',
                      style: TextStyle(
                        color: kWhitecolour,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<int> callapiservice() async {
    var url = Uri.https('reqres.in', '/api/login');
    var response = await http.post(url,
        body: {"email": emailText.text, "password": passwordText.text});
    return response.statusCode;
    // print('Response status: ${response.statusCode}');
  }
}
