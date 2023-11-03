import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Servico02 extends StatefulWidget {
  const Servico02({Key? key}) : super(key: key);

  @override
  _Servico02State createState() => _Servico02State();
}

class _Servico02State extends State<Servico02> {
  String bitcoinAddress = 'Sua carteira Bitcoin aqui';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Serviço 02'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Produto Bitcoin',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Text(
                'Descrição do produto Bitcoin aqui...',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              QrImageView(
                data: bitcoinAddress,
                version: QrVersions.auto,
                size: 200,
              ),
              const SizedBox(height: 20),
              const Text(
                'Endereço Bitcoin para pagamento:',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                bitcoinAddress,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Text(
                'Outros métodos de pagamento (ex. Pix):',
                style: TextStyle(fontSize: 16),
              ),
              // Add fields for other payment methods, such as Pix, here
            ],
          ),
        ),
      ),
    );
  }
}