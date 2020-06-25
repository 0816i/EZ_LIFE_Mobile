import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[50],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LoginWidget(),
            Text('EZ_LIFE는 학생 여러분들의 사적 개인정보를 저장하지 않습니다.'),
            Text('아시발귀찮다.')
          ],
        ),
      ),
    );
  }
}

class LoginWidget extends StatefulWidget {
  LoginWidget({Key key}) : super(key: key);

  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final _formKeybyid = GlobalKey<FormState>();
  final _formKeybypw = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      width: 400,
      height: 224,
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Form(
            key: _formKeybyid,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(hintText: '아이디를 입력하세요.'),
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: '비밀번호를 입력하세요.'),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyPage()));
                      },
                      child: Text('login'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
