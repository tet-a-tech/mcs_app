import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  AuthService(this._auth);

  Stream<User> get authStateChanges => _auth.authStateChanges();

//sign in with email and password
  Future<String> signIn({String email, String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return "signed";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

//register with email and password
  Future<String> signUp({String email, String password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "signed";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

//sign out
  Future<void> sighOut() async {
    await _auth.signOut();
  }
}
