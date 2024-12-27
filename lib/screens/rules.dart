import 'package:flutter/material.dart';
import 'package:proj1/navigation/main_appbar.dart';

import '../utils/global_color.dart';

class Rules extends StatelessWidget {
  const Rules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppbar(rightText: '회칙'),
    );
  }
}
