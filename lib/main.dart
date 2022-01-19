import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/background2.png"))),
          child: Row(
            children: [
              const SizedBox(width: 50,),
              Expanded(
                flex: 1,
                child: Card(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset("assets/profile2.png"),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      const Text("- I'M OLUWATUMININU OJO", style: TextStyle(fontSize: 30, color: Colors.white),),
                      const Text("MOBILE DEVELOPER"),
                      const Text(
                          "I'm a Tunisian based web designer & front‑end "
                          "developer focused on crafting clean & user‑friendly "
                          "experiences, I am passionate about building excellent "
                          "software that improves the lives of those around me."),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          "MORE ABOUT ME",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
