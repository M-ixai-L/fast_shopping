import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fast_shopping/models/fs_product.dart';
import 'package:fast_shopping/models/fs_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductRepository {
  ProductRepository();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<List<FSProduct>> getProductsStream() {
    final doc = _firestore.collection('products').snapshots().map((event) =>
        event.docs.map((doc) => FSProduct.fromJson(doc.data())).toList());
    return doc;
  }

  Stream<FSUser> getUserStream(String id) {
    final doc = _firestore
        .collection('users')
        .doc(id)
        .snapshots()
        .map((event) => FSUser.fromJson(event.data()!));
    return doc;
  }

  Future<FSUser> getUser() async {
    final User? user = FirebaseAuth.instance.currentUser;

    final doc = await _firestore.collection('users').doc(user!.uid).get();
    return FSUser.fromJson(doc.data()!);
  }

  Future<void> addProduct(FSProduct product) async {
    final doc = _firestore.collection('products').doc();
    await doc.set(product.copyWith(id: doc.id).toJson());
  }

  Future<void> deleteProduct(String id) async {
    await _firestore.collection('products').doc(id).delete();
  }

  Future<void> updateUser(FSUser user) async {
    await _firestore.collection('users').doc(user.uid).update(user.toJson());
  }

  Future<FSUser?> buyProduct(FSUser user) async {
    await _firestore.collection('users').doc(user.uid).set(user.toJson());
    final doc = await _firestore.collection('users').doc(user.uid).get();
    if (doc.data() != null) {
      return FSUser.fromJson(doc.data()!);
    }
    return null;
  }
}
