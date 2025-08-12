import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:loci/data/models/review/review_dto.dart';

class ReviewApi {
  final FirebaseFirestore firestore;
  final FirebaseStorage storage;

  ReviewApi({required this.firestore, required this.storage});
  Future<void> addReview(ReviewDto dto, {File? imageFile}) async {
    String? imageUrl;
    if (imageFile != null) {
      final ref = storage
          .ref()
          .child('reviews')
          .child('${DateTime.now().millisecondsSinceEpoch}.jpg');
      await ref.putFile(imageFile);
      imageUrl = await ref.getDownloadURL();
    }

    final data = dto.toJson();
    if (imageUrl != null) {
      data['image_url'] = imageUrl;
    }
    data['created_at'] = Timestamp.now();

    await firestore.collection('reviews').add(data);
  }
}
