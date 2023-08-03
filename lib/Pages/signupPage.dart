import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                child: Stack(clipBehavior: Clip.hardEdge, children: [
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
                    margin: const EdgeInsets.only(top: 80, left: 20),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: const Text(
                      'Create a new \naccount',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 200, left: 20),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 30, left: 5),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ))),
                  Container(
                    margin: const EdgeInsets.only(top: 60, left: 230),
                    child: Image.asset(
                      'assets/images/trolly.png',
                      height: 150,
                      width: 150,
                    ),
                  ),
                ]),
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
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 50,
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: TextFormField(
                                // controller: _userNameController,
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your full name';
                                  }
                                  return null;
                                },
                                style:
                                    const TextStyle(color: Color(0xFF5C6098)),
                                decoration: InputDecoration(
                                  label: const Text('Full Name'),
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
                                    Icons.person,
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
                                  label: const Text('Email'),
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
                                  label: const Text('Confirm Password'),
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
                            const SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                print('Registered');
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
                                  'Register',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                )),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Already have an account ?",
                                  style: TextStyle(
                                      color: Color(0xFF5C6098), fontSize: 16),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'Login',
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
              ),
            ],
          )),
    );
  }
}
