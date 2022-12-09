import 'package:flutter/material.dart';
import 'package:shivam/statechange.dart';

class Mysample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless sample',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flower'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Rose'),
              Row(
                children: [
                  Expanded(
                    child: IconButton(
                      icon: CircleAvatar(
                        child: Icon(Icons.arrow_back),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Statechange(),
                            ));
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
