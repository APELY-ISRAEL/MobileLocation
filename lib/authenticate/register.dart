import 'package:flutter/material.dart';
import 'package:gestlocation/authenticate/login.dart';
import 'package:gestlocation/route.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const  Text(
                "Miabe Zon",
                style: TextStyle(
                    fontSize: 24 ,
                    fontWeight: FontWeight.bold
                ),
              ),

              const  SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text(
                    "Inscrivez vous",
                    style: TextStyle(fontSize:18),
                  ),
                ],
              ),
              const  SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Container(
                  decoration :BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color:Colors.grey.withOpacity(0.5),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const TextField(
                      style: TextStyle(fontSize:18),
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: "enter your username",
                        border:  InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              const  SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Container(
                  decoration :BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color:Colors.grey.withOpacity(0.5),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const TextField(
                      style: TextStyle(fontSize:18),
                      decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: "enter your Email Adress",
                        border:  InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              const  SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Container(
                  decoration :BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color:Colors.grey.withOpacity(0.5),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const TextField(
                      style: TextStyle(fontSize:18),
                      decoration: InputDecoration(
                        icon: Icon(Icons.password),
                        hintText: "enter your password",
                        border:  InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              const  SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Container(
                  decoration :BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color:Colors.grey.withOpacity(0.5),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const TextField(
                      style: TextStyle(fontSize:18),
                      decoration: InputDecoration(
                        icon: Icon(Icons.password),
                        hintText: "confirm to password",
                        border:  InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),

              const  SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration :BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color:Colors.blue,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child:  ElevatedButton(
                      onPressed: () {
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.exit_to_app),
                          SizedBox(width: 8),
                          Text("Inscription"),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              const  SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Text("you have an account?"),
                  TextButton(
                    onPressed: (){
                      _submitForm();
                    },
                    style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize:18, color: Colors.blue),
                    ),
                    child: Text("sign in"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _submitForm() async {
    navigator(context, const Login());
  }
}
