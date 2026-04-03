import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/entities/contact_message.dart';
import '../../domain/repositories/contact_repository.dart';

class FirebaseContactRepository implements ContactRepository {
  FirebaseContactRepository({
    FirebaseFirestore? firestore,
  }) : _firestore = firestore ?? FirebaseFirestore.instance;

  final FirebaseFirestore _firestore;

  @override
  Future<void> submit(ContactMessage message) async {
    await _firestore.collection('contacts').add(message.toJson());
  }
}

