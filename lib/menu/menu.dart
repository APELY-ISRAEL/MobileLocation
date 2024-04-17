import 'package:flutter/material.dart';

void main() {
  runApp(const Menu());
}

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MyAppState();
}

class _MyAppState extends State<Menu> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bienvenue"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print("cliquez seulement");
            },
            child: const Text("Click"),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: "Profil", icon: Icon(Icons.person))
            ],
            currentIndex: currentIndex,
            onTap: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            ),
      ),
    );
  }
}
