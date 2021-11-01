import 'package:flutter/material.dart';
import 'package:mobile_customer/models/user.dart';
import 'package:mobile_customer/values/app_fonts.dart';
import 'package:mobile_customer/values/app_styles.dart';

class ConsultantDetailScreen extends StatelessWidget {
  const ConsultantDetailScreen();
  static const routeName = '/consultant-detail-screen';

  @override
  Widget build(BuildContext context) {
    final double _sizeHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    User user = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(user.fullName),
        flexibleSpace:
            Container(decoration: BoxDecoration(color: Colors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image.network(user.image),
            ),
            SizedBox(
              height: _sizeHeight * 0.007,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name : ${user.fullName}',
                    style: AppStyle.desciptionStyle,
                  ),
                  Text(
                    'Email : ${user.email}',
                    style: AppStyle.desciptionStyle,
                  ),
                  Text(
                    'Phone : ${user.phone}',
                    style: AppStyle.desciptionStyle,
                  ),
                  Text(
                    'Address : ${user.address}',
                    style: AppStyle.desciptionStyle,
                  ),
                  Text(
                    'Birthday : ${user.birthday}',
                    style: AppStyle.desciptionStyle,
                  ),
                  Text(
                    'Gender : ${user.gender}',
                    style: AppStyle.desciptionStyle,
                  ),
                  Text(
                    'High School : ${user.highSchool}',
                    style: AppStyle.desciptionStyle,
                  ),
                  Text(
                    'Description : ${user.description}',
                    style: AppStyle.desciptionStyle,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
