import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/src/components/BOOTSTRAP.dart';
import 'package:get/get.dart';

class FindId extends StatelessWidget {
  const FindId({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: '아이디 찾기'),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 15, right: 15, top: 25, bottom: 25),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '아이디를 찾습니다.',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            SizedBox(
              height: 25,
            ),
            redBackgroundButton(
                title: '휴대폰 인증',
                onPress: () {
                  Get.toNamed('/FindId2');
                }),
          ],
        ),
      ),
    );
  }
}
