import 'package:flutter/material.dart';
import 'main.dart'; // importe a tela de login

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        // botao de voltar
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
            const Text(
              'Olá, usuário!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFFd92525),
              ),
            ),
            const SizedBox(height: 32),

            // area dos botoes
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
