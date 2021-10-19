import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _valorCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
        actions: [],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
            _crearSlider(),
            //_crearCheckbox(),
            _crearCheckbox2(),
            _switches(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      value: _valorSlider,
      //divisions: 20,
      label: 'Tamaño de la imagen',
      min: 100.0,
      max: 400.0,
      onChanged: (_valorCheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://i2.wp.com/noescinetodoloquereluce.com/wp-content/uploads/2017/08/liga-de-justicia.jpg?resize=800%2C445&ssl=1'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  /*Widget _crearCheckbox() {
    return Checkbox(
      value: _valorCheck,
      onChanged: (checks) {
        print(checks);
        setState(() {
          _valorCheck = checks!;
        });
      },
    );
  }*/

  Widget _crearCheckbox2() {
    return CheckboxListTile(
      title: Text('activastes el check'),
      value: _valorCheck,
      onChanged: (checks) {
        print(checks);
        setState(() {
          _valorCheck = checks!;
        });
      },
    );
  }

  Widget _switches() {
    /*return Switch(
      value: _valorCheck,
      onChanged: (checks) {
        print(checks);
        setState(() {
          _valorCheck = checks!;
        });
      },
    );*/
    return SwitchListTile(
        title: Text('activastes el check'),
        value: _valorCheck,
        onChanged: (checks) {
          print(checks);
          setState(() {
            _valorCheck = checks;
          });
        });
  }
}
