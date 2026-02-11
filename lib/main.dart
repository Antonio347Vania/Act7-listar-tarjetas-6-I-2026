import 'package:flutter/material.dart';

void main() => runApp(const AppSoriana());

class AppSoriana extends StatelessWidget {
  const AppSoriana({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LosEmpleados(),
    );
  }
}

class LosEmpleados extends StatelessWidget {
  const LosEmpleados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Soriana',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: const Icon(Icons.shopping_cart, color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(Icons.qr_code_scanner, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person_outline, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.white),
            onPressed: () {},
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFFFCC80), // Naranja bajito
                Color(0xFFFFCC80), // Naranja bajito
                Color(0xFFFFCC80), // Naranja bajito
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: [
          // Pasamos URL, Nombre y Puesto del empleado
          _crearTarjetaEmpleado(
              'https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/afe79d6b75c3f775c3efb959b1cf8e53dd2b01c0/empleado%202.jpg', 
              'Juan Pérez', 
              'Gerente de Tienda'),
          _crearTarjetaEmpleado(
              'https://raw.githubusercontent.com/Antonio347Vania/im-genes-para-flutter-6toI-11-Feb-2026/afe79d6b75c3f775c3efb959b1cf8e53dd2b01c0/empleado%201.jpg', 
              'María García', 
              'Cajera Principal'),
          _crearTarjetaEmpleado(
              'https://randomuser.me/api/portraits/men/3.jpg', 
              'Carlos López', 
              'Jefe de Piso'),

        ],
      ),
    );
  }

  // Función corregida para Empleados
  Widget _crearTarjetaEmpleado(String urlImagen, String nombre, String puesto) {
    return Card(
      color: const Color(0xFFFFE0B2), // Naranja bajito
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(urlImagen),
        ),
        title: Text(
          nombre,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          puesto,
          style: const TextStyle(color: Colors.black87),
        ),
        trailing: const Icon(
          Icons.favorite,
          color: Colors.red,
        ),
      ),
    );
  }
}