import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingWidget extends StatefulWidget {
  double size;
   LoadingWidget({super.key,this.size = 20});

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size,
      width: widget.size,
      child: Platform.isAndroid ? CircularProgressIndicator(
        color: Colors.blue,
      ) : CupertinoActivityIndicator(
        color: Colors.blue,
      )
    );
  }
}