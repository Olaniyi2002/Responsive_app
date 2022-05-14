import 'package:flutter/material.dart';

import 'mobile.dart';
import 'web.dart';
class Change extends StatelessWidget {
  const Change({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    if(width<=630){
      return Mobile();
    }else{
      return Web();
    }
  }
}
