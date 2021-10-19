import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://i0.wp.com/wipy.tv/wp-content/uploads/2019/10/Funko-Stan-Lee.jpg?ssl=1'),
              radius: 20.0,
            ),
          ),
          Container(
              margin: EdgeInsets.only(right: 15.0),
              child: CircleAvatar(
                backgroundColor: Colors.amber[900],
                child: Text('ME'),
              ))
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://ichef.bbci.co.uk/news/640/cpsprodpb/E726/production/_95147195_mediaitem95147194.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 150),
        ),
      ),
    );
  }
}
