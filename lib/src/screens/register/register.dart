import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/src/components/BOOTSTRAP.dart';
import 'package:get/get.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: '회원가입'),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding:
                  EdgeInsets.only(left: 15, right: 15, top: 25, bottom: 25),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          '아이디',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(child: textField()),
                            SizedBox(
                              width: 10,
                            ),
                            redOutlineButton(
                                title: '중복확인', onPress: () {}, width: 100),
                          ],
                        ),
                      ],
                    ),
                  ),
                  textAndTextField(text: '비밀번호'),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '영문, 숫자, 특수기호를 모두 포함해 8자 이상',
                    style: TextStyle(color: Color(0xffE51A47)),
                  ),
                  textAndTextField(text: '비밀번호 확인'),
                  textAndTextField(text: '이름'),
                  textAndTextField(text: '휴대폰 번호'),
                  SizedBox(
                    height: 10,
                  ),
                  redOutlineButton(
                      title: '휴대폰 본인인증',
                      width: double.infinity,
                      onPress: () {}),
                  textAndTextField(text: '닉네임'),
                  textAndTextField(text: '이메일(선택)'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '나이(선택)',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '본인인증 시 자동입력',
                            style: TextStyle(color: Color(0xff777777)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '20',
                            style: TextStyle(
                                fontSize: 32,
                                color: Color(0xffCFCFCF),
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '세',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xffFEEDEC),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      '나이 정보는 청소년 구매 제한품목과 19세 미만 판매금지 품목에 사용됩니다.',
                      style: TextStyle(
                        color: Color(0xffE51A47),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              child: Column(
                children: [
                  _button(text: '이용약관 동의', onPress: () {}),
                  _button(text: '개인정보처리방침 동의', onPress: () {}),
                  _button(text: '위치기반서비스 이용약관 동의', onPress: () {}),
                  SizedBox(
                    height: 20,
                  ),
                  redBackgroundButton(
                      title: '회원가입 완료',
                      onPress: () {
                        Get.offAllNamed('/RegisterSuccess');
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row _button({String? text, Function()? onPress}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$text',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextButton(
          onPressed: onPress,
          child: Text(
            '자세히',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Color(0xffFEEDEC),
            minimumSize: Size(73, 29),
            primary: Color(0xffE51A47),
          ),
        ),
      ],
    );
  }
}
