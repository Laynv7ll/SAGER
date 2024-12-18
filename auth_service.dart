import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  /// Create a new user with email and password
  Future<User?> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      final UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return cred.user;
    } on FirebaseAuthException catch (e) {
      log("FirebaseAuthException: ${e.message}");
    } catch (e) {
      log("Error in createUserWithEmailAndPassword: $e");
    }
    return null;
  }

  /// Login user with email and password
  Future<User?> loginUserWithEmailAndPassword(
      String email, String password) async {
    try {
      final UserCredential cred = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return cred.user;
    } on FirebaseAuthException catch (e) {
      log("FirebaseAuthException: ${e.message}");
    } catch (e) {
      log("Error in loginUserWithEmailAndPassword: $e");
    }
    return null;
  }

  /// Sign out the currently logged-in user
  Future<void> signOut() async {
    try {
      await _auth.signOut();
      log("User successfully signed out.");
    } catch (e) {
      log("Error in signOut: $e");
    }
  }

  /// Send password reset email
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      log("Password reset email sent to $email");
    } on FirebaseAuthException catch (e) {
      log("FirebaseAuthException: ${e.message}");
    } catch (e) {
      log("Error in sendPasswordResetEmail: $e");
    }
  }
}
