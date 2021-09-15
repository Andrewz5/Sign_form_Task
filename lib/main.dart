import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text("Login Form",
                    style: TextStyle(fontSize: 35, color: Colors.blueAccent)),
                Image.asset(
                  "images/logo.png",
                  height: 130,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const TextField(

              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone Number',
                labelStyle: TextStyle(fontSize: 20),
                filled: true,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                labelStyle: TextStyle(fontSize: 20),
                filled: true,
              ),
            ),
            Container(
              width: 40,
              margin: const EdgeInsets.all(30.0),
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.lightBlue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: const BorderSide(color: Colors.blueAccent)))),
                onPressed: () {},
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),

            ),
            const Text("Forget password?Tap me",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.grey))
           , Container(
              width: 40,
              margin: const EdgeInsets.all(30.0),
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.grey),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: const BorderSide(color: Colors.grey)))),
                onPressed: () {},
                child: const Text(
                  'No Account? SignUp',
                  style: TextStyle(color: Colors.black),
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
