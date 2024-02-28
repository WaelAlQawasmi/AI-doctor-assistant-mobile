import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

final _formKey = GlobalKey<FormState>();
String _password = '';
String _email = '';

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
              child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(20),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://raw.githubusercontent.com/WaelAlQawasmi/AI-doctor-assistant/main/resources/js/vueApp/img/login.gif",
                          height: 150,
                          errorBuilder: (context, error, stackTrace) {
                            // Return a placeholder or error message widget
                            return Text('Error loading image');
                          },
                        ),
                        SizedBox(
                            width: 200, // Adjust the width as needed
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  hintText: "Email",
                                  prefixIcon: Icon(Icons.person),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                  )),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter Email';
                                }
                                if (!isValidEmail(value)) {
                                  return 'Please enter a valid email address';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _email = value!;
                              },
                            )),
                        const Padding(padding: EdgeInsets.all(20)),
                        SizedBox(
                            width: 200, // Adjust the width as needed
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: "Password",
                                prefixIcon: Icon(Icons.password),
                                border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter Password';
                                }

                                return null;
                              },
                              onSaved: (value) {
                                _password = value!;
                              },
                            )),
                        Padding(padding: EdgeInsets.all(20)),
                        OutlinedButton(onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState?.save();
                              // Process form data
                              print('Name: $_password');
                              print('Email: $_email');
                              Navigator.pushNamed(context, '/dashboard');
                            }
                        }, child: Text("Login"))

                      ],
                    ),
                  ))),
        ));
  }
  bool isValidEmail(String email) {
    // Use the emailValidator provided by Flutter
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }
}
