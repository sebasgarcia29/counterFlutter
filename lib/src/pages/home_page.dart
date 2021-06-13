import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final styleText = new TextStyle(fontSize: 25, fontFamily: 'Arial');

  int conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Numero de clicks: ',
              style: styleText,
            ),
            Text('$conteo', style: styleText)
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Hola jeje');
        },
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
    );
  }
}
