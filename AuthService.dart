import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  final SupabaseClient _client = Supabase.instance.client;

  Future<void> signOut() async {
    final session = _client.auth.currentSession;
    if (session == null) {
      throw Exception("Session is null");
    }
    await _client.auth.signOut();
  }

  Future<void> signIn(String email, String password) async {
    try {
      final response = await _client.auth.signInWithPassword(
        email: email,
        password: password,
      );

      if (response.user == null) {
        throw Exception("User not found after sign-in.");
      }
    } catch (e) {
      throw Exception('Error signing in: $e');
    }
  }

  Future<void> signUp(String email, String password) async {
    try {
      final response = await _client.auth.signUp(
        email: email,
        password: password,
      );

      if (response.user == null) {
        throw Exception("User not created successfully.");
      }
    } catch (e) {
      throw Exception('Error signing up: $e');
    }
  }
}
