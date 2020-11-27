import 'package:flutter/material.dart';

import 'package:device_screen_type/device_screen_type.dart';
//import 'package:flutterwebapp/ui/base_widget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizingInformation) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 150,
                margin: const EdgeInsets.all(50),
                color: Colors.blue,
                child: BaseWidget(builder: (context, sizingInfo)=> Text(sizingInfo.orientation.toString()),),
              ),
              Container(
                height: 150,
                margin: const EdgeInsets.all(50),
                color: Colors.blue,
                child: BaseWidget(builder: (context, sizingInfo)=> Text(sizingInfo.toString()),),
              ),
              Text(sizingInformation.toString()),
            ],
          ),
        ),
      );
    });
  }
}
