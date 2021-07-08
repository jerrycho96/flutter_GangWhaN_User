import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/src/components/BOOTSTRAP.dart';

class FindId2 extends StatelessWidget {
  const FindId2({Key? key}) : super(key: key);

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
            Row(
              children: [
                Flexible(child: textField(hintText: '핸드폰 번호')),
                // TextField(),
                SizedBox(
                  width: 10,
                ),
                redOutlineButton(title: '인증번호 발송', onPress: () {}),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Flexible(child: textField(hintText: '인증번호 입력')),
                // TextField(),
                SizedBox(
                  width: 10,
                ),
                redOutlineButton(title: '인증하기', onPress: () {}),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            redBackgroundButton(title: '다음', onPress: () {}),
          ],
        ),
      ),
    );
  }
}
