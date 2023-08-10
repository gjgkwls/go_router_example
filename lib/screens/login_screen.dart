import 'package:flutter/material.dart';

/// 로그인 폼에서 사용할 폼 데이터입니다.
@immutable
class _LoginFormData {
  final String email;
  final String password;

  const _LoginFormData({this.email = '', this.password = ''});

  _LoginFormData copyWith({String? email, String? password}) => _LoginFormData(
        email: email ?? this.email,
        password: password ?? this.password,
      );
}

/// 로그인 화면입니다
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // 키
  final _loginFormKey = GlobalKey<FormState>();
  // 로그인 정보
  _LoginFormData _formData = const _LoginFormData();
  // Locale

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Form(
            key: _loginFormKey,
            child: Column(
              children: [
                TextFormField(
                  initialValue: _formData.email,
                  onSaved: (value) => onSaved(email: value),
                ),
                TextFormField(
                  initialValue: _formData.password,
                  onSaved: (value) => onSaved(password: value),
                ),
                TextButton(
                  onPressed: onSubmit,
                  child: const Text('로그인'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void onSubmit() {
    final form = _loginFormKey.currentState;
    if (form == null) {
      return;
    }

    final bool isValid = form.validate();
    if (!isValid) {
      debugPrint('hello world');
      return;
    }

    form.save();
    // TODO: 로그인 이벤트를 발생시킵니다.
    debugPrint(_formData.email);
    debugPrint(_formData.password);
  }

  /// [onSubmit]에서 발생시키는 `save` 메소드의 사이드이펙트인 `onSaved` 이벤트를 처리하는 메소드
  ///
  /// [_LoginFormData]를 새 데이터로 갱신합니다.
  void onSaved({String? email, String? password}) {
    _formData = _formData.copyWith(
      email: email ?? _formData.email,
      password: password ?? _formData.password,
    );
  }
}
