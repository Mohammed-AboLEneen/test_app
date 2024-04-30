import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:untitled/cores/models/person_model.dart';

class FirebaseHandler{

  final _firebase =   FirebaseFirestore.instance;

  Future<void> addDoc({required String collectionName, required Map<String, dynamic> data})async{

    await _firebase.collection(collectionName)
        .add(data);
  }

  Future<List<PersonModel>> getData({required String collectionName}) async {
    // Get docs from collection reference
    QuerySnapshot querySnapshot = await _firebase.collection(collectionName).get();

    // Get data from docs and convert map to List
    List<PersonModel> allData = querySnapshot.docs.map((doc) => PersonModel.fromJson(doc.data() as Map<String, dynamic>, doc.id)).toList();

    print(allData);

    return allData;
  }

  Future<void> deleteDoc({required String collectionName, required String docId})async{

    await _firebase.collection(collectionName).doc(docId).delete();
  }
}