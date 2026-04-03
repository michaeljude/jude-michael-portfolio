import '../entities/contact_message.dart';

abstract interface class ContactRepository {
  Future<void> submit(ContactMessage message);
}

