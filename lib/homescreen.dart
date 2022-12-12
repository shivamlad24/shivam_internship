import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shivam/app_config.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void _increamentcounter() {
    setState(() {
      counter += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConfig.of(context)?.appTitle ?? "Sample"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                "You are running ${AppConfig.of(context)?.buildFlavor ?? "Dev"} flavor"),
            const Text(
              'You have pushed the button this mainy times:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            TextButton(
              onPressed: () => throw Exception(),
              child: const Text("Throw Test Exception"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increamentcounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
