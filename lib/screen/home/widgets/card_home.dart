import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {
  const CardHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: const EdgeInsets.all(16),
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bem-Vindo à Nossa Empresa',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Nossa Empresa é especializada em fornecer soluções de alta qualidade para nossos clientes. Oferecemos uma variedade de serviços, incluindo:',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Desenvolvimento de Aplicativos Móveis'),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Desenvolvimento Web'),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Consultoria em TI'),
            ),
            SizedBox(height: 16),
            Text(
              'Nossa missão é fornecer soluções sob medida que atendam às necessidades específicas de nossos clientes. Entre em contato conosco para saber mais sobre como podemos ajudá-lo.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
