import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _nome = 'usuário';

  @override
  void initState() {
    super.initState();
    _carregarNome();
  }

  Future<void> _carregarNome() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final doc = await FirebaseFirestore.instance.collection('usuarios').doc(user.uid).get();
      setState(() {
        _nome = doc.data()?['nome'] ?? 'usuário';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFd92525),
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );

    Widget buildButton(IconData icon, String label, VoidCallback onTap) {
      return ElevatedButton.icon(
        style: buttonStyle,
        onPressed: onTap,
        icon: Icon(icon, size: 28),
        label: Text(label, style: const TextStyle(fontSize: 18)),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Login()),
            );
          },
        ),
        title: const Text(
          'Code Hambúrguer',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFFd92525),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFFebe1c6),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text(
              'Olá, $_nome!',
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFFd92525),
              ),
            ),
            const SizedBox(height: 32),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 24,
                crossAxisSpacing: 24,
                children: [
                  buildButton(Icons.home, 'Home', () {}),
                  buildButton(Icons.shopping_cart, 'Fazer Pedido', () {}),
                  buildButton(Icons.person, 'Dados da Conta', () {}),
                  buildButton(Icons.payment, 'Pagamentos', () {}),
                  buildButton(Icons.location_on, 'Endereço', () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
