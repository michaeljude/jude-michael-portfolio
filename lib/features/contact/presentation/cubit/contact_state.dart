import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_state.freezed.dart';

enum ContactSubmitStatus {
  idle,
  submitting,
  success,
  failure,
}

@freezed
sealed class ContactState with _$ContactState {
  const factory ContactState({
    @Default(ContactSubmitStatus.idle) ContactSubmitStatus status,
    String? errorMessage,
  }) = _ContactState;
}

