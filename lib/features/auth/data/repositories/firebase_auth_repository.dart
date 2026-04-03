import 'package:firebase_auth/firebase_auth.dart' as fb;

import '../../domain/entities/app_user.dart';
import '../../domain/repositories/auth_repository.dart';

class FirebaseAuthRepository implements AuthRepository {
  FirebaseAuthRepository({
    fb.FirebaseAuth? auth,
  }) : _auth = auth ?? fb.FirebaseAuth.instance;

  final fb.FirebaseAuth _auth;

  @override
  Stream<AppUser?> authStateChanges() {
    return _auth.authStateChanges().map(_mapUser);
  }

  @override
  Future<AppUser> signInAnonymously() async {
    final credential = await _auth.signInAnonymously();
    final user = credential.user;
    if (user == null) {
      throw StateError('Anonymous sign-in returned null user');
    }
    return _mapUser(user)!;
  }

  @override
  Future<void> signOut() => _auth.signOut();

  static AppUser? _mapUser(fb.User? user) {
    if (user == null) return null;
    return AppUser(
      uid: user.uid,
      isAnonymous: user.isAnonymous,
      email: user.email,
    );
  }
}

