import 'package:flutter/material.dart';
import 'package:m_toast/m_toast.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'M Toast Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter M Toast Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ShowMToast toast = ShowMToast();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: (){
                toast.successToast(context, message: "Message Sent",image: "assets/twitter_logo.png", backgroundColor: Colors.white, alignment: Alignment.topCenter, duration: 1500);
              },
              child: Text("Show Success Toast"),
            ),
            OutlinedButton(
              onPressed: (){
                toast.errorToast(context, message: "Message not Send",image: "assets/twitter_logo.png", backgroundColor: Colors.white, alignment: Alignment.topCenter);
              },
              child: Text("Show Error Toast"),
            ),
          ],
        )
      ),
    );
  }
}
