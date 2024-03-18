import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_insta/shared/snackbar.dart';

class AuthMethods {
  register({required email, required password, required context}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      print(" messgae : ${e.message}");
      showSnackBar(context, "ERROR :  ${e.code} ");
    } catch (e) {
      print(e);
    }
  }
}
