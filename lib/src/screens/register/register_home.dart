import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/src/components/BOOTSTRAP.dart';
import 'package:get/get.dart';

class RegisterHome extends StatelessWidget {
  const RegisterHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: Image.asset(
              'assets/images/login_logo.png',
            ),
          ),
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  loginButton(
                    title: '네이버 아이디로 가입',
                    backColor: Color(0xff00C73C),
                    textColor: Colors.white,
                    assets: 'assets/images/naver_login.png',
                    onPress: () {},
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  loginButton(
                    title: '카카오톡 아이디로 가입',
                    backColor: Color(0xffFAE100),
                    textColor: Colors.black,
                    assets: 'assets/images/kakao_login.png',
                    onPress: () {},
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  loginButton(
                    title: 'APPLE ID로 가입',
                    backColor: Color(0xff111111),
                    textColor: Colors.white,
                    assets: 'assets/images/apple_login.png',
                    onPress: () {},
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  loginButton(
                    title: '일반 회원가입',
                    backColor: Color(0xffE51A47),
                    textColor: Colors.white,
                    assets: 'assets/images/register_icon.png',
                    onPress: () {
                      Get.toNamed('/Register');
                    },
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textButton(
                  title: '로그인',
                  fontWeight: FontWeight.bold,
                  onPress: () {
                    Get.back();
                  },
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  height: 12,
                  width: 0.5,
                  color: Colors.black,
                ),
                textButton(
                  title: '비회원 이용',
                  fontWeight: FontWeight.normal,
                  onPress: () {
                    print('clicked');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
