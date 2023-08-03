import 'package:e_commerce_app/Pages/forgetPass.dart';
import 'package:e_commerce_app/Pages/home.dart';
import 'package:e_commerce_app/Pages/signupPage.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          top: false,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF293265),
                            Color(0xFF5C6098),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 50, left: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        'Sign in to your\naccount',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 200, left: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40, left: 150),
                      child: Image.asset(
                        'assets/images/trolly2.png',
                        height: 300,
                        width: 300,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: SingleChildScrollView(
                  child: Container(
                      margin: const EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              margin: const EdgeInsets.only(
                                  top: 20, left: 20, right: 20),
                              child: TextFormField(
                                // controller: _userNameController,
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value!.isEmpty || !value.contains("@")) {
                                    return 'Please enter your email';
                                  }
                                  return null;
                                },
                                style:
                                    const TextStyle(color: Color(0xFF5C6098)),
                                decoration: InputDecoration(
                                  label: const Text('Username'),
                                  labelStyle:
                                      const TextStyle(color: Color(0xFF5C6098)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          width: 2, color: Color(0xFF5C6098))),
                                  disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          width: 2, color: Colors.grey)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          width: 2, color: Color(0xFF5C6098))),
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          width: 2, color: Colors.red)),
                                  prefixIcon: const Icon(
                                    Icons.email,
                                    color: Color(0xFF5C6098),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 50,
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: TextFormField(
                                // controller: _passwordController,
                                obscureText: _isObscure,
                                validator: (value) {
                                  if (value!.isEmpty || value.length == 8) {
                                    return 'Please enter your password';
                                  }

                                  return null;
                                },

                                style:
                                    const TextStyle(color: Color(0xFF5C6098)),
                                decoration: InputDecoration(
                                  label: const Text('Password'),
                                  labelStyle:
                                      const TextStyle(color: Color(0xFF5C6098)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          width: 2, color: Color(0xFF5C6098))),
                                  disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          width: 2, color: Colors.grey)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          width: 2, color: Color(0xFF5C6098))),
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                          width: 2, color: Colors.red)),
                                  prefixIcon: const Icon(
                                    Icons.key,
                                    color: Color(0xFF5C6098),
                                  ),
                                  suffixIcon: IconButton(
                                    color: const Color(0xFF5C6098),
                                    icon: _isObscure
                                        ? const Icon(
                                            Icons.visibility,
                                            color: Color(0xFF5C6098),
                                          )
                                        : const Icon(
                                            Icons.visibility_off,
                                            color: Color(0xFF5C6098),
                                          ),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 180),
                              child: TextButton(
                                child: const Text(
                                  'Forgot Password ?',
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xFF293265)),
                                ),
                                onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ForgetPass())),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()));
                              },
                              focusColor: const Color(0xFF5C6098),
                              child: Container(
                                margin:
                                    const EdgeInsets.only(left: 20, right: 20),
                                height: 50,
                                width: 400,
                                decoration: BoxDecoration(
                                    color: const Color(0xFF293265),
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Center(
                                    child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                )),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Center(
                                child: Text(
                              'Or',
                              style: TextStyle(color: Color(0xFF5C6098)),
                            )),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Divider(
                                color: Color(0xFF5C6098),
                                thickness: 1,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 150,
                                  margin: const EdgeInsets.all(20),
                                  child: InkWell(
                                    onTap: () {
                                      print('Google');
                                    },
                                    child: Card(
                                      elevation: 5,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                            'assets/images/Google.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.all(10),
                                  height: 60,
                                  width: 150,
                                  child: InkWell(
                                    onTap: () {
                                      print('Facebook');
                                    },
                                    child: Card(
                                      elevation: 5,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                            'assets/images/Facebook.png'),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Don't have an account ?",
                                  style: TextStyle(
                                      color: Color(0xFF5C6098), fontSize: 16),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SignUp()));
                                    },
                                    child: const Text(
                                      'Sign Up',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF293265)),
                                    ))
                              ],
                            ),
                          ],
                        ),
                      )),
                ),
              )
            ],
          ),
        ));
  }
}
