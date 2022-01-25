import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:star_wars/core/services/swservice.dart';

import 'core/models/people.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  People? _userInfo;
  int _count = 0;
  dynamic _results;
  dynamic _previous;
  dynamic _next;

  @override
  void initState() {
    fetchSWAPIData().then((value) => _userInfo = value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                color: Colors.purpleAccent,
                child: Text(
                  'Response count is $_count',
                  style: const TextStyle(
                    fontSize: 24.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.greenAccent,
                child: Text(
                  'Response next is $_next',
                  style: const TextStyle(
                    fontSize: 24.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.blueAccent,
                child: Text(
                  'Response results is $_results',
                  style: const TextStyle(
                    fontSize: 24.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _swapiAction,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  Future<dynamic> fetchSWAPIData() async {
    return await StarWarsService().swApiRequest().then(
      (value) async {
        if (value != null) {
          _userInfo = value;
          debugPrint(_userInfo!.count.toString());
          debugPrint(_userInfo!.results.toString());
          debugPrint(_userInfo!.previous.toString());
          debugPrint(_userInfo!.next.toString());
          setState(() {
            _count = _userInfo!.count!.toInt();
            _next = _userInfo!.next!;
            _results = _userInfo!.results!;
          });
          return _userInfo;
        }
      },
    ).catchError((_) {
      throw Exception();
    });
  }

  void _swapiAction() {
    var value = fetchSWAPIData();
  }
}
