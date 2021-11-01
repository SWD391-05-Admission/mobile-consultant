import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobile_customer/models/talkshow.dart';
import 'package:mobile_customer/models/user.dart';
import 'package:mobile_customer/values/app_fonts.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen();
  static const routesName = '/save';

  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override
  Widget build(BuildContext context) {
    final double _sizeHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final double _sizeWidth = MediaQuery.of(context).size.width -
        MediaQuery.of(context).padding.left -
        MediaQuery.of(context).padding.right;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),
              Text('Title '),
              TextField(
                maxLines: 3,
              ),
              Text('Title '),
              TextField(
                maxLines: 3,
              ),
              Text('Title '),
              TextField(
                maxLines: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
