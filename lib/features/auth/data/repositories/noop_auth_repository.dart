import 'dart:async';

import '../../domain/entities/app_user.dart';
import '../../domain/repositories/auth_repository.dart';

class NoopAuthRepository implements AuthRepository {
  const NoopAuthRepository();

  @override
  Stream<AppUser?> authStateChanges() => const Stream<AppUser?>.empty();

  @override
  Future<AppUser> signInAnonymously() {
    throw UnsupportedError('Firebase not configured');
  }

  @override
  Future<void> signOut() async {}
}

