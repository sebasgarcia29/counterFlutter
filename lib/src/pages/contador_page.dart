import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _styleText = new TextStyle(fontSize: 25, fontFamily: 'Arial');
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefull'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Numero de clicks: ',
              style: _styleText,
            ),
            Text('$_conteo', style: _styleText)
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          onPressed: _reset,
          tooltip: 'reset counter',
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: _disminuir,
          tooltip: 'Decrease counter',
          child: Icon(Icons.remove),
        ),
        SizedBox(
          width: 6.0,
        ),
        FloatingActionButton(
          onPressed: _agregar,
          tooltip: 'Increment counter',
          child: Icon(Icons.add),
        )
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _disminuir() {
    setState(() => _conteo--);
  }

    void _reset() {
    setState(() => _conteo = 0);
  }
}
