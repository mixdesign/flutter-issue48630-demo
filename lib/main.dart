import 'package:flutter/material.dart';

@pragma('vm:entry-point')
void mainMethod() => runApp(MyApp());

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Tap to present'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        color: Colors.white,
        child: ListView.separated(
          padding: const EdgeInsets.all(0),
          itemCount: 30,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.green,
              child: Text('Entry $index',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  )),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(),
        ),
      ),
      floatingActionButton: null,
    );
  }
}
