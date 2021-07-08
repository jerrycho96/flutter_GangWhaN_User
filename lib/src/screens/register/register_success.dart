import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/src/components/BOOTSTRAP.dart';
import 'package:get/get.dart';

class RegisterSuccess extends StatelessWidget {
  const RegisterSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('회원가입 완료'),
        elevation: 1,
      ),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Image.asset('assets/images/register_success.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: redBackgroundButton(
                title: '홈으로',
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 20,
                ),
                onPress: () {
                  Get.offAllNamed('/home');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
