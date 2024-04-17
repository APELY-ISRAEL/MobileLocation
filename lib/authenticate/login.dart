
import 'package:flutter/material.dart';
import 'package:gestlocation/authenticate/register.dart';
import 'package:gestlocation/route.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _email = '';
  String _password = '';
  String _confpassword = '';
  TextEditingController email = TextEditingController(text: "");
  TextEditingController password = TextEditingController(text: "");
  TextEditingController confPassword = TextEditingController(text: "");
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
                        "Welcome internaute",
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
                   filled: true,
                   icon: Icon(Icons.email),
                  hintText: "Email Adress",
                   border:  InputBorder.none,
                 ),
                   keyboardType: TextInputType.emailAddress,
                  
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
                            hintText: "Email Adress",
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
                             Text("Connexion"),
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
                          TextButton(
                               onPressed: (){
                                 print("buton");
                               },
                          style: TextButton.styleFrom(
                            textStyle: TextStyle(fontSize:18, color: Colors.blue),
                          ),
                              child: Text("Forget Password"),
                   ),
                        ],
                      ),
                  const  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                        const Text("Don't have an account?"),
                     TextButton(
                        onPressed: (){
                          _submitForm();
                        },
                        style: TextButton.styleFrom(
                          textStyle: TextStyle(fontSize:18, color: Colors.blue),
                        ),
                       child: Text("sign Up"),
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
    navigator(context, const Register());
  }
}
