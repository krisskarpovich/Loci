import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:loci/data/services/auth_service.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key, });

  

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _counter = 0;

  popPage() {
    Navigator.pop(context);
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void logout() async {
    try {
      await authService.value.signOut();
      popPage();
      ;
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('widget.title'),
        actions: [IconButton(icon: Icon(Icons.abc), onPressed: () => logout())],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

