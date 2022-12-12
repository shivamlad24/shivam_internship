//import 'package:flutter/cupertino.dart';
// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';

class Statechange extends StatefulWidget {
  const Statechange({super.key});

  @override
  State<Statechange> createState() => _StatechangeState();
}

class _StatechangeState extends State<Statechange> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state == AppLifecycleState.resumed) {
      setState(() {
        print('resumed');
      });
    } else {
      print(state.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State change',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('State'),
        ),
        body: Center(
          child: Column(
            children: const [
              Text('Changed'),
            ],
          ),
        ),
      ),
    );
  }
}
