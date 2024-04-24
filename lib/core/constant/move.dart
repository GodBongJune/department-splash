import 'package:department/pages/auth_and_find/find_password_page/find_password_page.dart';
import 'package:department/pages/auth_and_find/find_password_page/find_password_page_widget/find_password_change_page.dart';
import 'package:department/pages/auth_and_find/join_page/join_page_widgets/joIn_page_formfield.dart';
import 'package:flutter/material.dart';

class Move {
  //회원가입 정보입력 페이지
  static String joinPageFormfield = "/joinPageFormField";

  //비밀번호 찾기 페이지
  static String findPassword = "/findPassword";

  //비밀번호 찾기&변경 페이지
  static String findPasswordChange = "/findPasswordChange";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    //회원가입 정보입력 페이지
    Move.joinPageFormfield: (context) => JoinPageFormfield(),

    //비밀번호 찾기 페이지
    Move.findPassword: (context) => FindPasswordPage(),

    //비밀번호 찾기&변경 페이지
    Move.findPasswordChange: (context) => FindPasswordChangePage(),
  };
}
