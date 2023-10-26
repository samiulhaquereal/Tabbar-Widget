import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(
        bottom: TabBar(tabs: [
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.phone),
          ),
        ],

        ),
        title: Text('Tabbar'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: TabBarView(children: [

        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.yellow,
        )

      ],),
    ),
        
      ),
    );
  }
}

