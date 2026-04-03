import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/contact_message.dart';
import '../../domain/usecases/submit_contact_message_use_case.dart';
import 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactCubit({
    required SubmitContactMessageUseCase submitContactMessage,
  })  : _submitContactMessage = submitContactMessage,
        super(const ContactState());

  final SubmitContactMessageUseCase _submitContactMessage;

  Future<void> submit({
    required String name,
    required String email,
    required String message,
  }) async {
    emit(state.copyWith(status: ContactSubmitStatus.submitting, errorMessage: null));
    try {
      await _submitContactMessage(
        ContactMessage(
          name: name.trim(),
          email: email.trim(),
          message: message.trim(),
          createdAt: DateTime.now(),
        ),
      );
      emit(state.copyWith(status: ContactSubmitStatus.success));
      emit(state.copyWith(status: ContactSubmitStatus.idle));
    } catch (e) {
      emit(state.copyWith(status: ContactSubmitStatus.failure, errorMessage: e.toString()));
      emit(state.copyWith(status: ContactSubmitStatus.idle));
    }
  }
}

