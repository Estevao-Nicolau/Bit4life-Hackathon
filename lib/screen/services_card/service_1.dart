import 'package:flutter/material.dart';

class Servico01 extends StatefulWidget {
  const Servico01({Key? key}) : super(key: key);

  @override
  _Servico01State createState() => _Servico01State();
}

class _Servico01State extends State<Servico01> {
  String bitcoinAddress = 'Sua carteira Bitcoin aqui';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4, // Adicione uma sombra ao card
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical:50), // Margem ao redor do card
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Heritage Planning regarding your Bitcoins',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Text(
                'Descrição do produto Bitcoin aqui...asdaksjhdkajhsdkljahsduwhksuas;jklhdasjuwasjdwujj',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Adquirir'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// QrImageView(
            //   data: bitcoinAddress,
            //   version: QrVersions.auto,
            //   size: 200,
            // ),
            // const SizedBox(height: 20),
            // const Text(
            //   'Endereço Bitcoin para pagamento:',
            //   style: TextStyle(fontSize: 16),
            // ),
            // Text(
            //   bitcoinAddress,
            //   style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            // ),
            // const SizedBox(height: 20),
            // const Text(
            //   'Outros métodos de pagamento (ex. Pix):',
            //   style: TextStyle(fontSize: 16),
            // ),