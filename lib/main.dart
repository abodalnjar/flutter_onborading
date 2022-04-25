import 'package:flutter/material.dart';

import 'onBorading.dart';

void main(){
  runApp(NewsApp());
}
class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboarding() ,
    );
  }


}


