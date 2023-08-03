import 'package:flutter/material.dart';

class ForgetPass extends StatefulWidget {
  const ForgetPass({super.key});

  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  final _formKey = GlobalKey<FormState>();

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
                    margin: const EdgeInsets.only(top: 100, left: 20),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 200, left: 20),
                    child: const Text(
                      'Enter your email account reset your password',
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
                      'assets/images/forgetpass.png',
                      height: 200,
                      width: 200,
                    ),
                  ),
                ]),
              ),
              Expanded(
                flex: 5,
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
                              style: const TextStyle(color: Color(0xFF5C6098)),
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
                            height: 60,
                          ),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                backgroundColor: Colors.transparent,
                                isDismissible: false,
                                isScrollControlled: false,
                                enableDrag: false,
                                builder: (context) => buildSheet(),
                              );
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
                                'Sent',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              )),
                            ),
                          ),
                        ],
                      ),
                    )),
              )
            ],
          ),
        ));
  }

  Widget buildSheet() => Container(
        height: 300,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                  color: Color(0xFF293265),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Icon(
                Icons.message,
                color: Colors.white,
                size: 50,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Check your email',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'We have sent a instructions to recover your password to your email',
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () => Navigator.pop(context),
              focusColor: const Color(0xFF5C6098),
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    color: const Color(0xFF293265),
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                    child: Text(
                  'Ok',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
              ),
            ),
          ],
        ),
      );
}
