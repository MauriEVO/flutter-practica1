import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(' CARD PAGE'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: [
            _cardTipo1(),
            SizedBox(height: 15.0),
            _cardTipo2(),
          ],
        ));
  }

  Widget _cardTipo1() {
    return Card(
        elevation: 5.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Column(children: <Widget>[
          ListTile(
            leading: Icon(Icons.album, color: Colors.blue),
            title: Text('mi titulos'),
            subtitle: Text(
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: () {}, child: Text('cancelar')),
              SizedBox(width: 10.0),
              TextButton(onPressed: () {}, child: Text('ok')),
            ],
          )
        ]));
  }

  Widget _cardTipo2() {
    final card = Container(
        child: Column(children: <Widget>[
      FadeInImage(
        placeholder: AssetImage('assets/jar-loading.gif'),
        image: NetworkImage(
            'https://ichef.bbci.co.uk/news/640/cpsprodpb/E726/production/_95147195_mediaitem95147194.jpg'),
        //width: 400.0,
        //height: 300.0,
        //fit: BoxFit.cover,
      ),
      Container(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
        child: Text(
            'make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum'),
      )
    ]));
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(0, 10.0),
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
