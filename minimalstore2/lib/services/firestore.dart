import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:minimalstore2/models/product.dart';

class FirestoreService {
  final CollectionReference products =
      FirebaseFirestore.instance.collection("produtos");

  Stream<QuerySnapshot> getProductsStream() {
    final ProductsStream = products.orderBy("name").snapshots();
    return ProductsStream;
  }
}
