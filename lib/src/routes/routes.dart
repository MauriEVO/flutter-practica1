import 'package:flutter/material.dart';
import 'package:components/src/pages/home_pages.dart';
import 'package:components/src/pages/avatar_page.dart';
import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/pages/card_page.dart';
import 'package:components/src/pages/animatedPager.dart';
import 'package:components/src/pages/input_page.dart';
import 'package:components/src/pages/slider_page.dart';
import 'package:components/src/pages/listview_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animated': (BuildContext context) => AnimatePager(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'listview': (BuildContext context) => ListViewPage(),
  };
}
