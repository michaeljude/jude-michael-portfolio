import '../../domain/entities/contact_message.dart';
import '../../domain/repositories/contact_repository.dart';

class InMemoryContactRepository implements ContactRepository {
  const InMemoryContactRepository();

  @override
  Future<void> submit(ContactMessage message) async {
    // Intentionally a no-op for now. Replaced by Firestore implementation in
    // the Firebase wiring step.
    await Future<void>.delayed(const Duration(milliseconds: 300));
  }
}

