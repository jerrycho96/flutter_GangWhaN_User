import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/src/components/BOOTSTRAP.dart';
import 'package:get/get.dart';

class FindHome extends StatelessWidget {
  const FindHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: '계정 찾기'),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, bottom: 25, top: 25),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '강화N 가입정보를 확인합니다.',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Color(0xffE5E5E5),
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              children: [
                _button(
                    title: '아이디를 찾습니다',
                    onPress: () {
                      Get.toNamed('/FindId');
                    }),
                Divider(
                  height: 1,
                ),
                _button(
                    title: '비밀번호를 찾습니다',
                    onPress: () {
                      Get.toNamed('/FindPass');
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }

  GestureDetector _button({String? title, Function()? onPress}) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 45,
        color: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$title',
              style: TextStyle(fontSize: 16),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
