import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<UserCredential> cadUser({
    required String email,
    required String senha,
    required String nome,
  }) async {
    final cred = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: senha,
    );

    // salva o nome no Firestore
    await _firestore.collection('usuarios').doc(cred.user!.uid).set({
      'nome': nome,
      'email': email,
      'uid': cred.user!.uid,
      'criado_em': DateTime.now(),
    });

    return cred;
  }

  Future<UserCredential> login({
    required String email,
    required String senha,
  }) async {
    return await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: senha,
    );
  }
}
