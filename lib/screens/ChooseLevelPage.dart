import 'package:flutter/material.dart';
import 'package:matchphotosmemorygamesforkids/screens/BoardPage.dart';

class ChooseLevelPage extends StatelessWidget{
  String passData;
  ChooseLevelPage({Key key, @required this.passData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BoardPage(passData: passData),
    );
  }
}
