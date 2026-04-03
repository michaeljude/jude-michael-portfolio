import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_message.freezed.dart';
part 'contact_message.g.dart';

@freezed
sealed class ContactMessage with _$ContactMessage {
  const factory ContactMessage({
    required String name,
    required String email,
    required String message,
    required DateTime createdAt,
  }) = _ContactMessage;

  factory ContactMessage.fromJson(Map<String, dynamic> json) =>
      _$ContactMessageFromJson(json);
}

