import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/src/components/BOOTSTRAP.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Image.asset(
                'assets/images/login_logo.png',
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textField(hintText: '아이디'),
                      SizedBox(
                        height: 10,
                      ),
                      textField(hintText: '비밀번호'),
                      SizedBox(
                        height: 10,
                      ),
                      redBackgroundButton(
                          title: '로그인',
                          onPress: () {
                            Get.offAllNamed('/Home');
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          textButton(
                            title: '회원가입',
                            fontWeight: FontWeight.bold,
                            onPress: () {
                              Get.toNamed('/RegisterHome');
                            },
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            height: 12,
                            width: 0.5,
                            color: Colors.black,
                          ),
                          textButton(
                            title: '계정찾기',
                            fontWeight: FontWeight.normal,
                            onPress: () {
                              Get.toNamed('/FindHome');
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
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    loginButton(
                      title: '네이버 로그인',
                      backColor: Color(0xff00C73C),
                      textColor: Colors.white,
                      assets: 'assets/images/naver_login.png',
                      onPress: () {},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    loginButton(
                      title: '카카오톡 로그인',
                      backColor: Color(0xffFAE100),
                      textColor: Colors.black,
                      assets: 'assets/images/kakao_login.png',
                      onPress: () {},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    loginButton(
                      title: 'APPLE ID 로그인',
                      backColor: Color(0xff111111),
                      textColor: Colors.white,
                      assets: 'assets/images/apple_login.png',
                      onPress: () {},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
