import '../entities/contact_message.dart';
import '../repositories/contact_repository.dart';

class SubmitContactMessageUseCase {
  const SubmitContactMessageUseCase(this._repository);

  final ContactRepository _repository;

  Future<void> call(ContactMessage message) => _repository.submit(message);
}

