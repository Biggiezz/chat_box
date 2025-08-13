import 'dart:async';

class LoginBloc {

  final StreamController<String> _emailController =
  StreamController.broadcast();
  final StreamController<String> _passController =
  StreamController.broadcast();

  // Sửa lại getter để trả về stream thực sự
  Stream<String> get emailStream => _emailController.stream;
  Stream<String> get passStream => _passController.stream;

  get validateEmail => null;

  get validatePassword => null;

  bool isValidInfo(String user, String pass) {
    // Tham số là 'user' và 'pass'
    bool isEmailValid = true;
    bool isPassValid = true;

    // Trong login_block.dart
    void validateEmail(String email) {
      if (email.isEmpty) {
        // Hoặc dùng Validation class của bạn
        _emailController.sink.addError("Username không được để trống");
      } else if (email.length < 3) {
        _emailController.sink.addError("Username phải có ít nhất 3 ký tự");
      } else {
        _emailController.sink.add("OK");
      }
    }

    void validatePassword(String password) {
      if (password.isEmpty) {
        _passController.sink.addError("Password không được để trống");
      } else if (password.length < 6) {
        _passController.sink.addError("Password phải có ít nhất 6 ký tự");
      } else {
        _passController.sink.add("OK");
      }
    }

    return isEmailValid && isPassValid; // Trả về kết quả tổng thể
  }

  // Thêm phương thức dispose
  void dispose() {
    _emailController.close();
    _passController.close();

  }
}
