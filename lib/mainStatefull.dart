import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainStatefull extends StatefulWidget {
  Function function;
  bool isDark;
  MainStatefull(this.function, this.isDark);

  @override
  State<MainStatefull> createState() => _MainStatefullState();
}

class _MainStatefullState extends State<MainStatefull> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Change to dart mode"),
      ),
      body: Switch(
          value: widget.isDark,
          onChanged: (value) {
            widget.function(value);
          }),
    );
  }
}
