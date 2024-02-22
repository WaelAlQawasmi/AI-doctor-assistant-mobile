import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

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
            const SizedBox(
                width: 200, // Adjust the width as needed
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "password",
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      )),
                )),
            Padding(padding: EdgeInsets.all(20)),
            SizedBox(
                width: 200, // Adjust the width as needed
                child: TextFormField(
                    decoration: const InputDecoration(
                  hintText: "email",
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ))),
            Padding(padding: EdgeInsets.all(20)),
            OutlinedButton(onPressed: () {}, child: Text("Login"))
          ],
        ),
      )),
    ));
  }
}
