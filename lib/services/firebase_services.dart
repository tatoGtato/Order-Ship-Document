import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../Models/product_model.dart';

final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

class FirestoreDB {
  Stream<List<Producto>> getAllProductos() {
    return _firebaseFirestore.collection('Platos').snapshots().map(
      (Snapshot) {
        return Snapshot.docs.map((doc) => Producto.fromSnapshot(doc)).toList();
      },
    );
  }
}

Future<void> addClientData(
    String name, String phone, String address, String obs) async {
  await _firebaseFirestore.collection('datos').add({
    "Direccion": address,
    "Nombre": name,
    "Observaciones": obs,
    "Telefono": phone
  });
}
