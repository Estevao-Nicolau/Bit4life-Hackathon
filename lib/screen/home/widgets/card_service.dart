import 'package:bitlife/screen/services_card/service_1.dart';
import 'package:bitlife/screen/services_card/service_2.dart';
import 'package:flutter/material.dart';

class CardService extends StatefulWidget {
  const CardService({Key? key}) : super(key: key);

  @override
  _CardServiceState createState() => _CardServiceState();
}

class _CardServiceState extends State<CardService> {
  List<ServiceInfo> services = [
    ServiceInfo(
      image: '',
      title: "Heritage Planning regarding your Bitcoins",
      rating: 4.7,
      description: "Description for Service 1",
      page: const Servico01(),
    ),
    ServiceInfo(
      image: "",
      title: "Click here for more",
      rating: 4.5,
      description: "Description for Service 2",
      page: const Servico02(),
    ),
    // Define more services with their unique characteristics and pages here
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: services.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DescriptionPage(
                    title: services[index].title,
                    description: services[index].description,
                    page: services[index].page,
                  ),
                ),
              );
            },
            child: CardItem(
              title: services[index].title,
              rating: services[index].rating,
              description: services[index].description,
            ),
          );
        },
      ),
    );
  }
}

class ServiceInfo {
  final String image;
  final String title;
  final double rating;
  final String description;
  final Widget page;

  ServiceInfo({
    required this.image,
    required this.title,
    required this.rating,
    required this.description,
    required this.page,
  });
}

class CardItem extends StatelessWidget {
  final String title;
  final double rating;
  final String description;

  const CardItem({super.key, 
    
    required this.title,
    required this.rating,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 275,
      margin: const EdgeInsets.only(right: 10.0),
      child: Card(
        color: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey.shade700, // Cor cinza escura dentro do Card
              height: 8, // Altura da faixa
              width: double.infinity, // Largura total
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18, // Tamanho da fonte personalizável
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ), // Espaçamento entre o título e a descrição
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 14, // Tamanho da fonte personalizável
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class DescriptionPage extends StatelessWidget {
  final String title;
  final String description;
  final Widget page;

  const DescriptionPage({
    super.key,
    required this.title,
    required this.description,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(description),
            page,
          ],
        ),
      ),
    );
  }
}
